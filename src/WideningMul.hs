{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE MagicHash, UnboxedTuples #-}
module WideningMul where
import GHC.Word (Word64(W64#))
import Data.WideWord.Word128
import GHC.Exts (timesWord2#)

wideningMulViaInteger :: Word64 -> Word64 -> Word128
wideningMulViaInteger !a !b = fromInteger (fromIntegral a * fromIntegral b :: Integer)

wideningMulViaWord128 :: Word64 -> Word64 -> Word128
wideningMulViaWord128 !a !b = fromIntegral a * fromIntegral b

wideningMulGHCPrim :: Word64 -> Word64 -> Word128
wideningMulGHCPrim (W64# a) (W64# b)
  = case timesWord2# a b of
      (# hi, lo #) -> Word128 (W64# hi) (W64# lo)
