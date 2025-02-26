#[repr(packed)]
struct _OSUnalignedU16 {
    __val: std::os::raw::c_ushort,
}

#[repr(packed)]
struct _OSUnalignedU32 {
    __val: std::os::raw::c_uint,
}

#[repr(packed)]
struct _OSUnalignedU64 {
    __val: std::os::raw::c_ulonglong,
}
