{-# LANGUAGE MagicHash, UnboxedTuples #-}
{-# LANGUAGE GHCForeignImportPrim #-}
{-# LANGUAGE UnliftedFFITypes #-}
module BinaryPolyMul.CLMUL.Prim where
import GHC.Exts (Word64#)
import GHC.Word (Word64(W64#))
import Data.WideWord.Word128 -- wide-word

foreign import prim "binaryPolyMul_prim"
  binaryPolyMul_prim# :: Word64# -> Word64# -> (# Word64#, Word64# #)

binaryPolyMul :: Word64 -> Word64 -> Word128
binaryPolyMul (W64# a) (W64# b)
  = case binaryPolyMul_prim# a b of
      (# lo, hi #) -> Word128 (W64# hi) (W64# lo)

foreign import prim "binaryPolyMul_clmul_thunk"
  binaryPolyMul_thunk# :: Word64# -> Word64# -> (# Word64#, Word64# #)

binaryPolyMulThunk :: Word64 -> Word64 -> Word128
binaryPolyMulThunk (W64# a) (W64# b)
  = case binaryPolyMul_thunk# a b of
      (# lo, hi #) -> Word128 (W64# hi) (W64# lo)
