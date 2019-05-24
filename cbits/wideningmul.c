#include <stdint.h>

extern uint64_t wideningMul_with_ptr(uint64_t a, uint64_t b, uint64_t *outHigh)
{
    unsigned __int128 result = (unsigned __int128)a * (unsigned __int128)b;
    *outHigh = (uint64_t)(result >> 64);
    return (uint64_t)result;
}

extern uint64_t wideningMul_lo(uint64_t a, uint64_t b)
{
    unsigned __int128 result = (unsigned __int128)a * (unsigned __int128)b;
    return (uint64_t)result;
}

extern uint64_t wideningMul_hi(uint64_t a, uint64_t b)
{
    unsigned __int128 result = (unsigned __int128)a * (unsigned __int128)b;
    return (uint64_t)(result >> 64);
}

// __int128 is equivalent to struct { uint64_t lo, hi }; on System V/x86_64 ABI
extern unsigned __int128 wideningMul_uint128(uint64_t a, uint64_t b)
{
    return (unsigned __int128)a * (unsigned __int128)b;
}
