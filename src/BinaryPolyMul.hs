{-# LANGUAGE BangPatterns #-}
module BinaryPolyMul where
import Data.Word
import Data.Bits
import Data.WideWord.Word128 -- wide-word

binaryPolyMul :: Word64 -> Word64 -> Word128
binaryPolyMul !a !b = loop 1 (a * (b .&. 1)) 0
  where
    loop !i !lo !hi
      | i == 64 = Word128 hi lo
      -- 1 <= i && i <= 63
      | otherwise = let !x = a * ((b `unsafeShiftR` i) .&. 1)
                    in loop (i+1) (lo `xor` (x `unsafeShiftL` i)) (hi `xor` (x `unsafeShiftR` (64 - i)))

binaryPolyMul8 :: Word8 -> Word8 -> Word16
binaryPolyMul8 !a !b
  = let !a' = fromIntegral a :: Word
        !b' = fromIntegral b :: Word
        !x0 = a' * (b' .&. 1)
        !x1 = a' * (b' .&. 2)
        !x2 = a' * (b' .&. 4)
        !x3 = a' * (b' .&. 8)
        !x4 = a' * (b' .&. 16)
        !x5 = a' * (b' .&. 32)
        !x6 = a' * (b' .&. 64)
        !x7 = a' * (b' .&. 128)
    in fromIntegral (x0 `xor` x1 `xor` x2 `xor` x3 `xor` x4 `xor` x5 `xor` x6 `xor` x7)

binaryPolyMul16_karatsuba :: Word16 -> Word16 -> Word32
binaryPolyMul16_karatsuba !a !b
  = let a0, a1, b0, b1 :: Word8
        !a0 = fromIntegral a
        !a1 = fromIntegral (a `unsafeShiftR` 8)
        !b0 = fromIntegral b
        !b1 = fromIntegral (b `unsafeShiftR` 8)
        a0b0, a1b1, axbx :: Word32
        !a0b0 = fromIntegral (binaryPolyMul8 a0 b0)
        !a1b1 = fromIntegral (binaryPolyMul8 a1 b1)
        !axbx = fromIntegral (binaryPolyMul8 (a0 `xor` a1) (b0 `xor` b1))
    in a0b0 `xor` ((axbx `xor` a0b0 `xor` a1b1 `xor` (a1b1 `unsafeShiftL` 8)) `unsafeShiftL` 8)

binaryPolyMul32_karatsuba :: Word32 -> Word32 -> Word64
binaryPolyMul32_karatsuba !a !b
  = let a0, a1, b0, b1 :: Word16
        !a0 = fromIntegral a
        !a1 = fromIntegral (a `unsafeShiftR` 16)
        !b0 = fromIntegral b
        !b1 = fromIntegral (b `unsafeShiftR` 16)
        a0b0, a1b1, axbx :: Word64
        !a0b0 = fromIntegral (binaryPolyMul16_karatsuba a0 b0)
        !a1b1 = fromIntegral (binaryPolyMul16_karatsuba a1 b1)
        !axbx = fromIntegral (binaryPolyMul16_karatsuba (a0 `xor` a1) (b0 `xor` b1))
    in a0b0 `xor` ((axbx `xor` a0b0 `xor` a1b1 `xor` (a1b1 `unsafeShiftL` 16)) `unsafeShiftL` 16)

binaryPolyMul64_karatsuba :: Word64 -> Word64 -> Word128
binaryPolyMul64_karatsuba !a !b
  = let a0, a1, b0, b1 :: Word32
        !a0 = fromIntegral a
        !a1 = fromIntegral (a `unsafeShiftR` 32)
        !b0 = fromIntegral b
        !b1 = fromIntegral (b `unsafeShiftR` 32)
        a0b0, a1b1, axbx :: Word64
        !a0b0 = binaryPolyMul32_karatsuba a0 b0
        !a1b1 = binaryPolyMul32_karatsuba a1 b1
        !axbx = binaryPolyMul32_karatsuba (a0 `xor` a1) (b0 `xor` b1)
        m, lo, hi :: Word64
        !m = axbx `xor` a0b0 `xor` a1b1
        !lo = a0b0 `xor` (m `unsafeShiftL` 32)
        !hi = a1b1 `xor` (m `unsafeShiftR` 32)
    in Word128 hi lo
