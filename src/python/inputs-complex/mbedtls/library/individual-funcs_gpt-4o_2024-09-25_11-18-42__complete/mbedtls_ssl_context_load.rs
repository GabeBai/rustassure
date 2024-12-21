use std::os::raw::{c_int, c_ulong};

type MbedtlsMpiUint = u64;

#[repr(C)]
pub struct MbedtlsMpi {
    s: c_int,
    n: c_ulong,
    p: *mut MbedtlsMpiUint,
}

#[repr(C)]
pub struct MbedtlsEcpPoint {
    X: MbedtlsMpi,
    Y: MbedtlsMpi,
    Z: MbedtlsMpi,
}
