typedef unsigned short uint16_t;
typedef unsigned long long uint64_t;
typedef uint64_t zahl_char_t;
enum zprimality {
 NONPRIME = 0,
 PROBABLY_PRIME,
 PRIME
};
enum zranddev {
 FAST_RANDOM = 0,
 SECURE_RANDOM,
 DEFAULT_RANDOM,
 FASTEST_RANDOM,
 LIBC_RAND_RANDOM,
 LIBC_RANDOM_RANDOM,
 LIBC_RAND48_RANDOM
};
enum zranddist {
 QUASIUNIFORM = 0,
 UNIFORM,
 MODUNIFORM
};
enum zerror {
 ZERROR_ERRNO_SET = 0,
 ZERROR_0_POW_0,
 ZERROR_0_DIV_0,
 ZERROR_DIV_0,
 ZERROR_NEGATIVE,
 ZERROR_INVALID_RADIX
};
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
  void
sprintint_fix(char *buf, zahl_char_t v)
{
 const char *partials = """0""0" """0""1" """0""2" """0""3" """0""4" """0""5" """0""6" """0""7" """0""8" """0""9""""1""0" """1""1" """1""2" """1""3" """1""4" """1""5" """1""6" """1""7" """1""8" """1""9""""2""0" """2""1" """2""2" """2""3" """2""4" """2""5" """2""6" """2""7" """2""8" """2""9""""3""0" """3""1" """3""2" """3""3" """3""4" """3""5" """3""6" """3""7" """3""8" """3""9""""4""0" """4""1" """4""2" """4""3" """4""4" """4""5" """4""6" """4""7" """4""8" """4""9""""5""0" """5""1" """5""2" """5""3" """5""4" """5""5" """5""6" """5""7" """5""8" """5""9""""6""0" """6""1" """6""2" """6""3" """6""4" """6""5" """6""6" """6""7" """6""8" """6""9""""7""0" """7""1" """7""2" """7""3" """7""4" """7""5" """7""6" """7""7" """7""8" """7""9""""8""0" """8""1" """8""2" """8""3" """8""4" """8""5" """8""6" """8""7" """8""8" """8""9""""9""0" """9""1" """9""2" """9""3" """9""4" """9""5" """9""6" """9""7" """9""8" """9""9";
 uint16_t *buffer = (uint16_t *)(buf + 1);
 buffer[8] = *(const uint16_t *)(partials + 2 * (v % 100)), v /= 100;
 buffer[7] = *(const uint16_t *)(partials + 2 * (v % 100)), v /= 100;
 buffer[6] = *(const uint16_t *)(partials + 2 * (v % 100)), v /= 100;
 buffer[5] = *(const uint16_t *)(partials + 2 * (v % 100)), v /= 100;
 buffer[4] = *(const uint16_t *)(partials + 2 * (v % 100)), v /= 100;
 buffer[3] = *(const uint16_t *)(partials + 2 * (v % 100)), v /= 100;
 buffer[2] = *(const uint16_t *)(partials + 2 * (v % 100)), v /= 100;
 buffer[1] = *(const uint16_t *)(partials + 2 * (v % 100)), v /= 100;
 buffer[0] = *(const uint16_t *)(partials + 2 * (v % 100)), v /= 100;
 *buf = (char)('0' + v);
 buf[19] = 0;
}
