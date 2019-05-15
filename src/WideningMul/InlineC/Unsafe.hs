{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
module WideningMul.InlineC.Unsafe where
import Data.Word
import Data.WideWord.Word128
import qualified Language.C.Inline as C hiding (block, exp, pure)
import qualified Language.C.Inline.Unsafe as C.Unsafe
import System.IO.Unsafe

C.include "<stdint.h>"

wideningMulWithPtr :: Word64 -> Word64 -> Word128
wideningMulWithPtr !a !b = unsafePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.Unsafe.block| uint64_t {
    unsigned __int128 result = (unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b);
    *$(uint64_t *outHigh) = (uint64_t)(result >> 64);
    return (uint64_t)result;
  } |]
  return $ Word128 hi lo

wideningMulWithPtrDupable :: Word64 -> Word64 -> Word128
wideningMulWithPtrDupable !a !b = unsafeDupablePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.Unsafe.block| uint64_t {
    unsigned __int128 result = (unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b);
    *$(uint64_t *outHigh) = (uint64_t)(result >> 64);
    return (uint64_t)result;
  } |]
  return $ Word128 hi lo

wideningMulCallingTwice :: Word64 -> Word64 -> Word128
wideningMulCallingTwice !a !b = unsafePerformIO $ do
  lo <- [C.Unsafe.block| uint64_t {
    return (uint64_t)((unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b));
  } |]
  hi <- [C.Unsafe.block| uint64_t {
    return (uint64_t)(((unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b)) >> 64);
  } |]
  return $ Word128 hi lo

wideningMulCallingTwiceDupable :: Word64 -> Word64 -> Word128
wideningMulCallingTwiceDupable !a !b = unsafeDupablePerformIO $ do
  lo <- [C.Unsafe.block| uint64_t {
    return (uint64_t)((unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b));
  } |]
  hi <- [C.Unsafe.block| uint64_t {
    return (uint64_t)(((unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b)) >> 64);
  } |]
  return $ Word128 hi lo

wideningMulCallingTwicePure :: Word64 -> Word64 -> Word128
wideningMulCallingTwicePure !a !b =
  let lo = [C.Unsafe.pure| uint64_t {
             (uint64_t)((unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b))
           } |]
      hi = [C.Unsafe.pure| uint64_t {
             (uint64_t)(((unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b)) >> 64)
           } |]
  in Word128 hi lo
