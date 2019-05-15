{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
module WideningMul.InlineC.Safe where
import Data.Word
import Data.WideWord.Word128
import qualified Language.C.Inline as C
import System.IO.Unsafe

C.include "<stdint.h>"

wideningMulWithPtr :: Word64 -> Word64 -> Word128
wideningMulWithPtr !a !b = unsafePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.block| uint64_t {
    unsigned __int128 result = (unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b);
    *$(uint64_t *outHigh) = (uint64_t)(result >> 64);
    return (uint64_t)result;
  } |]
  return $ Word128 hi lo

wideningMulWithPtrDupable :: Word64 -> Word64 -> Word128
wideningMulWithPtrDupable !a !b = unsafeDupablePerformIO $ do
  (hi, lo) <- C.withPtr $ \outHigh -> [C.block| uint64_t {
    unsigned __int128 result = (unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b);
    *$(uint64_t *outHigh) = (uint64_t)(result >> 64);
    return (uint64_t)result;
  } |]
  return $ Word128 hi lo

wideningMulCallingTwicePure :: Word64 -> Word64 -> Word128
wideningMulCallingTwicePure !a !b =
  let lo = [C.pure| uint64_t {
             (uint64_t)((unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b))
           } |]
      hi = [C.pure| uint64_t {
             (uint64_t)(((unsigned __int128)$(uint64_t a) * (unsigned __int128)$(uint64_t b)) >> 64)
           } |]
  in Word128 hi lo
