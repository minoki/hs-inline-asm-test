module Main where
import qualified WideningMul as WM
import qualified WideningMul.CFFI.Safe as WM.CFFI.Safe
import qualified WideningMul.CFFI.Unsafe as WM.CFFI.Unsafe
import qualified WideningMul.InlineC.Safe as WM.InlineC.Safe
import qualified WideningMul.InlineC.Unsafe as WM.InlineC.Unsafe
import qualified WideningMul.Prim as WM.Prim
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
import Numeric (showHex)

main :: IO ()
main = do
  putStrLn $ showHex (0xdeadbeef12345678 * 0xc0ffee1234567890 :: Integer) ""
  putStrLn $ showHex (WM.wideningMulViaInteger 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.wideningMulViaWord128 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.wideningMulGHCPrim 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.CFFI.Safe.wideningMulWithPtr 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.CFFI.Safe.wideningMulWithPtrDupable 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.CFFI.Safe.wideningMulWithPtrInline 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.CFFI.Safe.wideningMulCallingTwice 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.CFFI.Unsafe.wideningMulWithPtr 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.CFFI.Unsafe.wideningMulWithPtrDupable 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.CFFI.Unsafe.wideningMulWithPtrInline 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.CFFI.Unsafe.wideningMulCallingTwice 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.InlineC.Safe.wideningMulWithPtr 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.InlineC.Unsafe.wideningMulWithPtr 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.InlineC.Unsafe.wideningMulCallingTwice 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.InlineC.Unsafe.wideningMulCallingTwicePure 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.Prim.wideningMul 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (WM.Prim.wideningMulThunk 0xdeadbeef12345678 0xc0ffee1234567890) ""

  putStrLn $ showHex (BinaryPolyMul.binaryPolyMul 0xdead 0xbeef) ""
  putStrLn $ showHex (BinaryPolyMul.binaryPolyMul64_karatsuba 0xdead 0xbeef) ""
  putStrLn $ showHex (BinaryPolyMul.Portable.InlineC.Unsafe.binaryPolyMulWithPtr 0xdead 0xbeef) ""
  putStrLn $ showHex (BinaryPolyMul.CLMUL.InlineC.Unsafe.binaryPolyMulWithPtr 0xdead 0xbeef) ""
  putStrLn $ showHex (BinaryPolyMul.CLMUL.Prim.binaryPolyMul 0xdead 0xbeef) ""

  putStrLn $ showHex (BinaryPolyMul.binaryPolyMul 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (BinaryPolyMul.binaryPolyMul64_karatsuba 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (BinaryPolyMul.Portable.CFFI.Safe.binaryPolyMulWithPtr 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (BinaryPolyMul.Portable.CFFI.Unsafe.binaryPolyMulWithPtr 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (BinaryPolyMul.Portable.InlineC.Safe.binaryPolyMulWithPtr 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (BinaryPolyMul.Portable.Prim.binaryPolyMulThunk 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (BinaryPolyMul.CLMUL.CFFI.Unsafe.binaryPolyMulWithPtr 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (BinaryPolyMul.CLMUL.Prim.binaryPolyMul 0xdeadbeef12345678 0xc0ffee1234567890) ""
  putStrLn $ showHex (BinaryPolyMul.CLMUL.Prim.binaryPolyMulThunk 0xdeadbeef12345678 0xc0ffee1234567890) ""
