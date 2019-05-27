# inline-asm-test

Some attempt to mimic 'inline assembly' in Haskell using `foreign import prim`.

- MUL: Multiplication of two 64-bit integers, resulting a 128-bit integer
    - criterion report: [plain text](widening-mul-report.txt), [HTML](widening-mul-report.html)
- [CLMUL](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=clmul&expand=641,676): Carry-less multiplication of two 64-bit integers, resulting a 128-bit integer
    - criterion report: [plain text](binary-poly-mul-report.txt), [HTML](binary-poly-mul-report.html)

Benchmark is run on my MacBook Pro (Late 2013).

See also:

- [【低レベルHaskell】Haskell (GHC) でもインラインアセンブリに肉薄したい！](https://qiita.com/mod_poppo/items/793fdb08e62591d6f3fb)
