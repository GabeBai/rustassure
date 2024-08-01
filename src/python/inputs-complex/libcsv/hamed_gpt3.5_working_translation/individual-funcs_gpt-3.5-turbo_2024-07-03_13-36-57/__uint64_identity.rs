type __uint64_t = u64;

#[repr(C)]
#[derive(Clone, Copy)]
struct __QI__;
#[repr(C)]
#[derive(Clone, Copy)]
struct __HI__;
#[repr(C)]
#[derive(Clone, Copy)]
struct __SI__;
#[repr(C)]
#[derive(Clone, Copy)]
struct __DI__;
#[repr(C)]
#[derive(Clone, Copy)]
struct __word__;

#[inline]
fn __uint64_identity(__x: __uint64_t) -> __uint64_t {
    __x
}
