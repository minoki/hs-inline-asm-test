{-# LANGUAGE MagicHash, UnboxedTuples #-}
{-# LANGUAGE UnliftedFFITypes #-}
{-# LANGUAGE GHCForeignImportPrim #-}
module WideningMul.Prim where
import GHC.Exts (Word#)
import GHC.Word (Word64(W64#))
import Data.WideWord.Word128

foreign import prim "wideningMul_prim"
  wideningMul_prim# :: Word# -> Word# -> (# Word#, Word# #)

wideningMul :: Word64 -> Word64 -> Word128
wideningMul (W64# a) (W64# b)
  = case wideningMul_prim# a b of
      (# lo, hi #) -> Word128 (W64# hi) (W64# lo)
