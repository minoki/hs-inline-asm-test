#include <stdint.h>

extern uint64_t binaryPolyMul_portable_ptr(uint64_t a, uint64_t b, uint64_t *outHigh)
{
    uint64_t result[2] = {0, 0};
    for (int i = 0; i < 64; ++i) {
        uint64_t x = a * ((b >> i) & 1);
        result[0] ^= x << i; /* 0 <= i <= 63 */
        result[1] ^= i > 0 ? (x >> (64 - i)) : 0;
    }
    *outHigh = result[1];
    return result[0];
}

extern uint64_t binaryPolyMul_portable_lo(uint64_t a, uint64_t b)
{
    uint64_t resultLo = 0;
    for (int i = 0; i < 64; ++i) {
        uint64_t x = a * ((b >> i) & 1);
        resultLo ^= x << i; /* 0 <= i <= 63 */
    }
    return resultLo;
}

extern uint64_t binaryPolyMul_portable_hi(uint64_t a, uint64_t b)
{
    uint64_t resultHi = 0;
    for (int i = 0; i < 64; ++i) {
        uint64_t x = a * ((b >> i) & 1);
        resultHi ^= i > 0 ? (x >> (64 - i)) : 0;
    }
    return resultHi;
}

extern unsigned __int128 binaryPolyMul_portable_uint128(uint64_t a, uint64_t b)
{
    uint64_t result[2] = {0, 0};
    for (int i = 0; i < 64; ++i) {
        uint64_t x = a * ((b >> i) & 1);
        result[0] ^= x << i; /* 0 <= i <= 63 */
        result[1] ^= i > 0 ? (x >> (64 - i)) : 0;
    }
    return (unsigned __int128)result[0] | ((unsigned __int128)result[1] << 64);
}
