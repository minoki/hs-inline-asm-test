{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
module BinaryPolyMul.CLMUL.InlineC.Unsafe where
import Data.Word
import Data.WideWord.Word128 -- wide-word
import qualified Language.C.Inline as C hiding (block, exp, pure)
import qualified Language.C.Inline.Unsafe as C.Unsafe
import System.IO.Unsafe

C.include "<stdint.h>"
C.include "<x86intrin.h>" -- for _mm_clmulepi64_si128

binaryPolyMulWithPtr :: Word64 -> Word64 -> Word128
binaryPolyMulWithPtr !a !b = unsafePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.Unsafe.block| uint64_t {
    __m128i ax = {$(uint64_t a), 0};
    __m128i bx = {$(uint64_t b), 0};
    union {
        __m128i m128;
        uint64_t u64arr[2];
    } u;
    u.m128 = _mm_clmulepi64_si128(ax, bx, 0);
    *$(uint64_t *outHigh) = u.u64arr[1];
    return u.u64arr[0];
  } |]
  return $ Word128 hi lo

binaryPolyMulWithPtrDupable :: Word64 -> Word64 -> Word128
binaryPolyMulWithPtrDupable !a !b = unsafeDupablePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.Unsafe.block| uint64_t {
    __m128i ax = {$(uint64_t a), 0};
    __m128i bx = {$(uint64_t b), 0};
    union {
        __m128i m128;
        uint64_t u64arr[2];
    } u;
    u.m128 = _mm_clmulepi64_si128(ax, bx, 0);
    *$(uint64_t *outHigh) = u.u64arr[1];
    return u.u64arr[0];
  } |]
  return $ Word128 hi lo

binaryPolyMulCallingTwice :: Word64 -> Word64 -> Word128
binaryPolyMulCallingTwice !a !b = unsafeDupablePerformIO $ do
  lo <- [C.Unsafe.block| uint64_t {
    __m128i ax = {$(uint64_t a), 0};
    __m128i bx = {$(uint64_t b), 0};
    union {
        __m128i m128;
        uint64_t u64arr[2];
    } u;
    u.m128 = _mm_clmulepi64_si128(ax, bx, 0);
    return u.u64arr[0];
  } |]
  hi <- [C.Unsafe.block| uint64_t {
    __m128i ax = {$(uint64_t a), 0};
    __m128i bx = {$(uint64_t b), 0};
    union {
        __m128i m128;
        uint64_t u64arr[2];
    } u;
    u.m128 = _mm_clmulepi64_si128(ax, bx, 0);
    return u.u64arr[1];
  } |]
  return $ Word128 hi lo
