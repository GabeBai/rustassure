use std::os::raw::{c_int, c_long, c_ulong};

type size_t = c_ulong;
type __uint8_t = u8;
type __uint16_t = u16;
type __uint32_t = u32;
type __uint64_t = u64;
type __time_t = c_long;
type time_t = __time_t;

type uint8_t = __uint8_t;
type uint16_t = __uint16_t;
type uint32_t = __uint32_t;
type uint64_t = __uint64_t;

type mbedtls_mpi_uint = uint64_t;

#[repr(C)]
struct MbedtlsMpi {
    s: c_int,
    n: size_t,
    p: *mut mbedtls_mpi_uint,
}
