use std::os::raw::{c_int, c_ulong};

type size_t = c_ulong;
type uint8_t = u8;
type uint16_t = u16;
type uint32_t = u32;
type uint64_t = u64;

type mbedtls_mpi_uint = uint64_t;

#[repr(C)]
struct MbedtlsMpi {
    s: c_int,
    n: size_t,
    p: *mut mbedtls_mpi_uint,
}

impl MbedtlsMpi {
    fn init(&mut self) {
        self.s = 1;
        self.n = 0;
        self.p = std::ptr::null_mut();
    }
}

#[repr(C)]
enum MbedtlsEcpGroupId {
    None = 0,
    Secp192r1,
    // ... other values ...
}
