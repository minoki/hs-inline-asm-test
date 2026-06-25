{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE UnliftedFFITypes #-}
module WideningMul.CFFI.Safe where
import GHC.Word (Word64(W64#))
import Data.WideWord.Word128
import Foreign.Ptr (Ptr)
import Foreign.Storable (peek)
import Foreign.Marshal.Alloc as Marshal (alloca)
import System.IO.Unsafe (unsafePerformIO, unsafeDupablePerformIO)
import ReallyUnsafe (accursedUnutterablePerformIO)
import GHC.Exts (Word64X2#, unpackWord64X2#)

foreign import ccall "wideningMul_with_ptr"
  c_wideningMul_with_ptr :: Word64 -> Word64 -> Ptr Word64 -> IO Word64

wideningMulWithPtr :: Word64 -> Word64 -> Word128
wideningMulWithPtr !a !b = unsafePerformIO $ do
  Marshal.alloca $ \outHigh -> do
    lo <- c_wideningMul_with_ptr a b outHigh
    hi <- peek outHigh
    return $ Word128 hi lo

wideningMulWithPtrDupable :: Word64 -> Word64 -> Word128
wideningMulWithPtrDupable !a !b = unsafeDupablePerformIO $ do
  Marshal.alloca $ \outHigh -> do
    lo <- c_wideningMul_with_ptr a b outHigh
    hi <- peek outHigh
    return $ Word128 hi lo

wideningMulWithPtrInline :: Word64 -> Word64 -> Word128
wideningMulWithPtrInline !a !b = accursedUnutterablePerformIO $ do
  Marshal.alloca $ \outHigh -> do
    lo <- c_wideningMul_with_ptr a b outHigh
    hi <- peek outHigh
    return $ Word128 hi lo

foreign import ccall "wideningMul_lo"
  c_wideningMul_lo :: Word64 -> Word64 -> Word64

foreign import ccall "wideningMul_hi"
  c_wideningMul_hi :: Word64 -> Word64 -> Word64

wideningMulCallingTwice :: Word64 -> Word64 -> Word128
wideningMulCallingTwice !a !b = Word128 (c_wideningMul_hi a b) (c_wideningMul_lo a b)

foreign import ccall safe "wideningMul_xmm"
  c_wideningMul_xmm :: Word64 -> Word64 -> Word64X2#

wideningMulXMM :: Word64 -> Word64 -> Word128
wideningMulXMM !a !b = case unpackWord64X2# (c_wideningMul_xmm a b) of
  (# lo, hi #) -> Word128 (W64# hi) (W64# lo)
