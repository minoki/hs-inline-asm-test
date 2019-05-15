{-# LANGUAGE MagicHash, UnboxedTuples #-}
module ReallyUnsafe where
import GHC.Exts (realWorld#)
import GHC.Types (IO(..)) -- ghc-prim

-- From Data.ByteString.Internal
{-# INLINE accursedUnutterablePerformIO #-}
accursedUnutterablePerformIO :: IO a -> a
accursedUnutterablePerformIO (IO m)
  = case m realWorld# of
      (# _, r #) -> r
