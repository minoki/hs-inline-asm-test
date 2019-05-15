# inline-asm-test

Some attempt to mimic 'inline assembly' in Haskell using `foreign import prim`.

- MUL: Multiplication of two 64-bit integers, resulting a 128-bit integer
- [CLMUL](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=clmul&expand=641,676): Carry-less multiplication of two 64-bit integers, resulting a 128-bit integer

See also:

- [【低レベルHaskell】Haskell (GHC) でもインラインアセンブリに肉薄したい！](https://qiita.com/mod_poppo/items/793fdb08e62591d6f3fb)
