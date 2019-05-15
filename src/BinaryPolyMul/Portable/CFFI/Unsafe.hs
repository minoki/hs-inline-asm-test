{-# LANGUAGE BangPatterns #-}
module BinaryPolyMul.Portable.CFFI.Unsafe where
import Data.Word
import Data.WideWord.Word128
import Foreign.Ptr (Ptr)
import Foreign.Storable (peek)
import Foreign.Marshal.Alloc as Marshal (alloca)
import System.IO.Unsafe (unsafePerformIO, unsafeDupablePerformIO)
import ReallyUnsafe (accursedUnutterablePerformIO)

foreign import ccall unsafe "binaryPolyMul_portable_ptr"
  c_binaryPolyMul_portable_ptr :: Word64 -> Word64 -> Ptr Word64 -> IO Word64

binaryPolyMulWithPtr :: Word64 -> Word64 -> Word128
binaryPolyMulWithPtr !a !b = unsafePerformIO $ do
  Marshal.alloca $ \outHigh -> do
    lo <- c_binaryPolyMul_portable_ptr a b outHigh
    hi <- peek outHigh
    return $ Word128 hi lo

binaryPolyMulWithPtrDupable :: Word64 -> Word64 -> Word128
binaryPolyMulWithPtrDupable !a !b = unsafeDupablePerformIO $ do
  Marshal.alloca $ \outHigh -> do
    lo <- c_binaryPolyMul_portable_ptr a b outHigh
    hi <- peek outHigh
    return $ Word128 hi lo

binaryPolyMulWithPtrInline :: Word64 -> Word64 -> Word128
binaryPolyMulWithPtrInline !a !b = accursedUnutterablePerformIO $ do
  Marshal.alloca $ \outHigh -> do
    lo <- c_binaryPolyMul_portable_ptr a b outHigh
    hi <- peek outHigh
    return $ Word128 hi lo

foreign import ccall unsafe "binaryPolyMul_portable_lo"
  c_binaryPolyMul_portable_lo :: Word64 -> Word64 -> Word64

foreign import ccall unsafe "binaryPolyMul_portable_hi"
  c_binaryPolyMul_portable_hi :: Word64 -> Word64 -> Word64

binaryPolyMulCallingTwice :: Word64 -> Word64 -> Word128
binaryPolyMulCallingTwice !a !b = Word128 (c_binaryPolyMul_portable_hi a b) (c_binaryPolyMul_portable_lo a b)
