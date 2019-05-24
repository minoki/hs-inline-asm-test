{-# LANGUAGE MagicHash, UnboxedTuples #-}
{-# LANGUAGE GHCForeignImportPrim #-}
{-# LANGUAGE UnliftedFFITypes #-}
module BinaryPolyMul.Portable.Prim where
import GHC.Exts (Word#)
import GHC.Word (Word64(W64#))
import Data.WideWord.Word128 -- wide-word

foreign import prim "binaryPolyMul_portable_thunk"
  binaryPolyMul_thunk# :: Word# -> Word# -> (# Word#, Word# #)

binaryPolyMulThunk :: Word64 -> Word64 -> Word128
binaryPolyMulThunk (W64# a) (W64# b)
  = case binaryPolyMul_thunk# a b of
      (# lo, hi #) -> Word128 (W64# hi) (W64# lo)
