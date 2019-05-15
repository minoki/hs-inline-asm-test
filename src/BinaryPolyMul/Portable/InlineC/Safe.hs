{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
module BinaryPolyMul.Portable.InlineC.Safe where
import Data.Word
import Data.WideWord.Word128 -- wide-word
import qualified Language.C.Inline as C
import System.IO.Unsafe

C.include "<stdint.h>"

binaryPolyMulWithPtr :: Word64 -> Word64 -> Word128
binaryPolyMulWithPtr !a !b = unsafePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.block| uint64_t {
    uint64_t result[2] = {0, 0};
    for (int i = 0; i < 64; ++i) {
        uint64_t x = $(uint64_t a) * (($(uint64_t b) >> i) & 1);
        result[0] ^= x << i; /* 0 <= i <= 63 */
        result[1] ^= i > 0 ? (x >> (64 - i)) : 0;
    }
    *$(uint64_t *outHigh) = result[1];
    return result[0];
  } |]
  return $ Word128 hi lo

binaryPolyMulWithPtrDupable :: Word64 -> Word64 -> Word128
binaryPolyMulWithPtrDupable !a !b = unsafeDupablePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.block| uint64_t {
    uint64_t result[2] = {0, 0};
    for (int i = 0; i < 64; ++i) {
        uint64_t x = $(uint64_t a) * (($(uint64_t b) >> i) & 1);
        result[0] ^= x << i; /* 0 <= i <= 63 */
        result[1] ^= i > 0 ? (x >> (64 - i)) : 0;
    }
    *$(uint64_t *outHigh) = result[1];
    return result[0];
  } |]
  return $ Word128 hi lo

binaryPolyMulCallingTwice :: Word64 -> Word64 -> Word128
binaryPolyMulCallingTwice !a !b = unsafeDupablePerformIO $ do
  lo <- [C.block| uint64_t {
    uint64_t resultLo = 0;
    for (int i = 0; i < 64; ++i) {
        uint64_t x = $(uint64_t a) * (($(uint64_t b) >> i) & 1);
        resultLo ^= x << i; /* 0 <= i <= 63 */
    }
    return resultLo;
  } |]
  hi <- [C.block| uint64_t {
    uint64_t resultHi = 0;
    for (int i = 0; i < 64; ++i) {
        uint64_t x = $(uint64_t a) * (($(uint64_t b) >> i) & 1);
        resultHi ^= i > 0 ? (x >> (64 - i)) : 0;
    }
    return resultHi;
  } |]
  return $ Word128 hi lo
