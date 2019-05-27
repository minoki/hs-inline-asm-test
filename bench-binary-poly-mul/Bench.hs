import Criterion.Main
import qualified BinaryPolyMul
import qualified BinaryPolyMul.Portable.CFFI.Safe
import qualified BinaryPolyMul.Portable.CFFI.Unsafe
import qualified BinaryPolyMul.Portable.InlineC.Safe
import qualified BinaryPolyMul.Portable.InlineC.Unsafe
import qualified BinaryPolyMul.Portable.Prim
import qualified BinaryPolyMul.CLMUL.CFFI.Safe
import qualified BinaryPolyMul.CLMUL.CFFI.Unsafe
import qualified BinaryPolyMul.CLMUL.InlineC.Safe
import qualified BinaryPolyMul.CLMUL.InlineC.Unsafe
import qualified BinaryPolyMul.CLMUL.Prim
import Data.Word

main :: IO ()
main = do
  let arg :: (Word64, Word64)
      arg = (0xdeadbeef12345678, 0xc0ffee1234567890)
  defaultMain
    [ bgroup "portable"
      [ bench "pure Haskell impl" $ nf (uncurry BinaryPolyMul.binaryPolyMul) arg
      , bench "pure Haskell impl (Karatsuba)" $ nf (uncurry BinaryPolyMul.binaryPolyMul64_karatsuba) arg
      , bgroup "safe FFI"
        [ bench "pointer/unsafePerformIO" $ nf (uncurry BinaryPolyMul.Portable.CFFI.Safe.binaryPolyMulWithPtr) arg
        , bench "calling twice" $ nf (uncurry BinaryPolyMul.Portable.CFFI.Safe.binaryPolyMulCallingTwice) arg
        ]
      , bgroup "unsafe FFI"
        [ bench "pointer/unsafePerformIO" $ nf (uncurry BinaryPolyMul.Portable.CFFI.Unsafe.binaryPolyMulWithPtr) arg
        , bench "calling twice" $ nf (uncurry BinaryPolyMul.Portable.CFFI.Unsafe.binaryPolyMulCallingTwice) arg
        ]
      , bgroup "inline-c (safe FFI)"
        [ bench "pointer/unsafePerformIO" $ nf (uncurry BinaryPolyMul.Portable.InlineC.Safe.binaryPolyMulWithPtr) arg
        , bench "calling twice" $ nf (uncurry BinaryPolyMul.Portable.InlineC.Safe.binaryPolyMulCallingTwice) arg
        ]
      , bgroup "inline-c (unsafe FFI)"
        [ bench "pointer/unsafePerformIO" $ nf (uncurry BinaryPolyMul.Portable.InlineC.Unsafe.binaryPolyMulWithPtr) arg
        , bench "calling twice" $ nf (uncurry BinaryPolyMul.Portable.InlineC.Unsafe.binaryPolyMulCallingTwice) arg
        ]
      , bench "prim thunk" $ nf (uncurry BinaryPolyMul.Portable.Prim.binaryPolyMulThunk) arg
      ]
    , bgroup "CLMUL"
      [ bgroup "safe FFI"
        [ bench "pointer/unsafePerformIO" $ nf (uncurry BinaryPolyMul.CLMUL.CFFI.Safe.binaryPolyMulWithPtr) arg
        , bench "calling twice" $ nf (uncurry BinaryPolyMul.CLMUL.CFFI.Safe.binaryPolyMulCallingTwice) arg
        ]
      , bgroup "unsafe FFI"
        [ bench "pointer/unsafePerformIO" $ nf (uncurry BinaryPolyMul.CLMUL.CFFI.Unsafe.binaryPolyMulWithPtr) arg
        , bench "calling twice" $ nf (uncurry BinaryPolyMul.CLMUL.CFFI.Unsafe.binaryPolyMulCallingTwice) arg
        ]
      , bgroup "inline-c (safe FFI)"
        [ bench "pointer/unsafePerformIO" $ nf (uncurry BinaryPolyMul.CLMUL.InlineC.Safe.binaryPolyMulWithPtr) arg
        , bench "calling twice" $ nf (uncurry BinaryPolyMul.CLMUL.InlineC.Safe.binaryPolyMulCallingTwice) arg
        ]
      , bgroup "inline-c (unsafe FFI)"
        [ bench "pointer/unsafePerformIO" $ nf (uncurry BinaryPolyMul.CLMUL.InlineC.Unsafe.binaryPolyMulWithPtr) arg
        , bench "calling twice" $ nf (uncurry BinaryPolyMul.CLMUL.InlineC.Unsafe.binaryPolyMulCallingTwice) arg
        ]
      , bench "foreign import prim" $ nf (uncurry BinaryPolyMul.CLMUL.Prim.binaryPolyMul) arg
      , bench "prim thunk" $ nf (uncurry BinaryPolyMul.CLMUL.Prim.binaryPolyMulThunk) arg
      ]
    ]
