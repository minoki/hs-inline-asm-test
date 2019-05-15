{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
module BinaryPolyMul.Portable.InlineC.Unsafe where
import Data.Word
import Data.WideWord.Word128 -- wide-word
import qualified Language.C.Inline as C hiding (exp,block,pure)
import qualified Language.C.Inline.Unsafe as C.Unsafe
import System.IO.Unsafe

C.include "<stdint.h>"
C.include "<x86intrin.h>" -- for _mm_clmulepi64_si128

binaryPolyMulWithPtr :: Word64 -> Word64 -> Word128
binaryPolyMulWithPtr !a !b = unsafeDupablePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.Unsafe.block| uint64_t {
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

binaryPolyMulIntrinWithPtr :: Word64 -> Word64 -> Word128
binaryPolyMulIntrinWithPtr !a !b = unsafeDupablePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.Unsafe.block| uint64_t {
    __m128i ax = {$(uint64_t a), 0};
    __m128i bx = {$(uint64_t b), 0};
    union {
        __m128i result;
        uint64_t resultA[2];
    } u;
    u.result = _mm_clmulepi64_si128(ax, bx, 0);
    *$(uint64_t *outHigh) = u.resultA[1];
    return u.resultA[0];
  } |]
  return $ Word128 hi lo

binaryPolyMulCallingTwice :: Word64 -> Word64 -> Word128
binaryPolyMulCallingTwice !a !b = unsafeDupablePerformIO $ do
  lo <- [C.Unsafe.block| uint64_t {
    uint64_t resultLo = 0;
    for (int i = 0; i < 64; ++i) {
        uint64_t x = $(uint64_t a) * (($(uint64_t b) >> i) & 1);
        resultLo ^= x << i; /* 0 <= i <= 63 */
    }
    return resultLo;
  } |]
  hi <- [C.Unsafe.block| uint64_t {
    uint64_t resultHi = 0;
    for (int i = 0; i < 64; ++i) {
        uint64_t x = $(uint64_t a) * (($(uint64_t b) >> i) & 1);
        resultHi ^= i > 0 ? (x >> (64 - i)) : 0;
    }
    return resultHi;
  } |]
  return $ Word128 hi lo

binaryPolyMulIntrinCallingTwice :: Word64 -> Word64 -> Word128
binaryPolyMulIntrinCallingTwice !a !b = unsafeDupablePerformIO $ do
  lo <- [C.Unsafe.block| uint64_t {
    __m128i ax = {$(uint64_t a), 0};
    __m128i bx = {$(uint64_t b), 0};
    union {
        __m128i result;
        uint64_t resultA[2];
    } u;
    u.result = _mm_clmulepi64_si128(ax, bx, 0);
    return u.resultA[0];
  } |]
  hi <- [C.Unsafe.block| uint64_t {
    __m128i ax = {$(uint64_t a), 0};
    __m128i bx = {$(uint64_t b), 0};
    union {
        __m128i result;
        uint64_t resultA[2];
    } u;
    u.result = _mm_clmulepi64_si128(ax, bx, 0);
    return u.resultA[1];
  } |]
  return $ Word128 hi lo
