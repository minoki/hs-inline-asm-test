import Gauge.Main
import qualified WideningMul as WM
import qualified WideningMul.CFFI.Safe as WM.CFFI.Safe
import qualified WideningMul.CFFI.Unsafe as WM.CFFI.Unsafe
import qualified WideningMul.InlineC.Safe as WM.InlineC.Safe
import qualified WideningMul.InlineC.Unsafe as WM.InlineC.Unsafe
import qualified WideningMul.Prim as WM.Prim
import Data.Word

main :: IO ()
main = do
  let arg :: (Word64, Word64)
      arg = (0xdeadbeef12345678, 0xc0ffee1234567890)
  defaultMain
    [ bgroup "Haskell"
      [ bench "via Integer" $ nf (uncurry WM.wideningMulViaInteger) arg
      , bench "via Word128" $ nf (uncurry WM.wideningMulViaWord128) arg
      , bench "timesWord2#" $ nf (uncurry WM.wideningMulGHCPrim) arg
      ]
    , bgroup "safe FFI"
      [ bgroup "pointer"
        [ bench "unsafePerformIO" $ nf (uncurry WM.CFFI.Safe.wideningMulWithPtr) arg
        , bench "unsafeDupablePerformIO" $ nf (uncurry WM.CFFI.Safe.wideningMulWithPtrDupable) arg
        , bench "accursedUnutterablePerformIO" $ nf (uncurry WM.CFFI.Safe.wideningMulWithPtrInline) arg
        ]
      , bench "calling twice" $ nf (uncurry WM.CFFI.Safe.wideningMulCallingTwice) arg
      ]
    , bgroup "unsafe FFI"
      [ bgroup "pointer"
        [ bench "unsafePerformIO" $ nf (uncurry WM.CFFI.Unsafe.wideningMulWithPtr) arg
        , bench "unsafeDupablePerformIO" $ nf (uncurry WM.CFFI.Unsafe.wideningMulWithPtrDupable) arg
        , bench "accursedUnutterablePerformIO" $ nf (uncurry WM.CFFI.Unsafe.wideningMulWithPtrInline) arg
        ]
      , bench "calling twice" $ nf (uncurry WM.CFFI.Unsafe.wideningMulCallingTwice) arg
      ]
    , bgroup "inline-c (safe FFI)"
      [ bgroup "pointer"
        [ bench "unsafePerformIO" $ nf (uncurry WM.InlineC.Safe.wideningMulWithPtr) arg
        , bench "unsafeDupablePerformIO" $ nf (uncurry WM.InlineC.Safe.wideningMulWithPtr) arg
        ]
      , bench "calling twice" $ nf (uncurry WM.InlineC.Safe.wideningMulCallingTwicePure) arg
      ]
    , bgroup "inline-c (unsafe FFI)"
      [ bgroup "pointer"
        [ bench "unsafePerformIO" $ nf (uncurry WM.InlineC.Unsafe.wideningMulWithPtr) arg
        , bench "unsafeDupablePerformIO" $ nf (uncurry WM.InlineC.Unsafe.wideningMulWithPtrDupable) arg
        ]
      , bgroup "calling twice"
        [ bench "unsafePerformIO" $ nf (uncurry WM.InlineC.Unsafe.wideningMulCallingTwice) arg
        , bench "unsafeDupablePerformIO" $ nf (uncurry WM.InlineC.Unsafe.wideningMulCallingTwiceDupable) arg
        , bench "pure" $ nf (uncurry WM.InlineC.Unsafe.wideningMulCallingTwicePure) arg
        ]
      ]
    , bench "foreign import prim" $ nf (uncurry WM.Prim.wideningMul) arg
    , bench "prim thunk" $ nf (uncurry WM.Prim.wideningMulThunk) arg
    ]
