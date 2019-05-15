// Compile with -mpclmul
#include <stdint.h>
#include <x86intrin.h>

extern uint64_t binaryPolyMul_clmul_ptr(uint64_t a, uint64_t b, uint64_t *outHigh)
{
    __m128i ax = {a, 0};
    __m128i bx = {b, 0};
    union {
        __m128i m128;
        uint64_t u64arr[2];
    } u;
    u.m128 = _mm_clmulepi64_si128(ax, bx, 0);
    *outHigh = u.u64arr[1];
    return u.u64arr[0];
}

extern uint64_t binaryPolyMul_clmul_lo(uint64_t a, uint64_t b)
{
    __m128i ax = {a, 0};
    __m128i bx = {b, 0};
    union {
        __m128i m128;
        uint64_t u64arr[2];
    } u;
    u.m128 = _mm_clmulepi64_si128(ax, bx, 0);
    return u.u64arr[0];
}

extern uint64_t binaryPolyMul_clmul_hi(uint64_t a, uint64_t b)
{
    __m128i ax = {a, 0};
    __m128i bx = {b, 0};
    union {
        __m128i m128;
        uint64_t u64arr[2];
    } u;
    u.m128 = _mm_clmulepi64_si128(ax, bx, 0);
    return u.u64arr[1];
}
