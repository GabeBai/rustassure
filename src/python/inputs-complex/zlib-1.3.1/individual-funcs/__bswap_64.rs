type ptrdiff_t = isize;
type size_t = usize;
type wchar_t = i32;

#[repr(align(8))]
struct max_align_t {
    __clang_max_align_nonce1: i64,
    __clang_max_align_nonce2: f64,
}

type z_size_t = size_t;
type Byte = u8;
type uInt = u32;
type uLong = u64;
type Bytef = Byte;
type charf = i8;
type intf = i32;
type uIntf = uInt;
type uLongf = uLong;
type voidpc = *const core::ffi::c_void;
type voidpf = *mut core::ffi::c_void;
type voidp = *mut core::ffi::c_void;
type z_crc_t = u32;
type __u_char = u8;
type __u_short = u16;
type __u_int = u32;
type __u_long = u64;
type __int8_t = i8;
type __uint8_t = u8;
type __int16_t = i16;
type __uint16_t = u16;
type __int32_t = i32;
type __uint32_t = u32;
type __int64_t = i64;
type __uint64_t = u64;
type __int_least8_t = __int8_t;
type __uint_least8_t = __uint8_t;
type __int_least16_t = __int16_t;
type __uint_least16_t = __uint16_t;
type __int_least32_t = __int32_t;
type __uint_least32_t = __uint32_t;
type __int_least64_t = __int64_t;
type __uint_least64_t = __uint64_t;
type __quad_t = i64;
type __u_quad_t = u64;
type __intmax_t = i64;
type __uintmax_t = u64;
type __dev_t = u64;
type __uid_t = u32;
type __gid_t = u32;
type __ino_t = u64;
type __ino64_t = u64;
type __mode_t = u32;
type __nlink_t = u64;
type __off_t = i64;
type __off64_t = i64;
type __pid_t = i32;

#[repr(C)]
struct __fsid_t {
    __val: [i32; 2],
}

type __clock_t = i64;
type __rlim_t = u64;
type __rlim64_t = u64;
type __id_t = u32;
type __time_t = i64;
type __useconds_t = u32;
type __suseconds_t = i64;
type __suseconds64_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut core::ffi::c_void;
type __blksize_t = i64;
type __blkcnt_t = i64;
type __blkcnt64_t = i64;
type __fsblkcnt_t = u64;
type __fsblkcnt64_t = u64;
type __fsfilcnt_t = u64;
type __fsfilcnt64_t = u64;
type __fsword_t = i64;
type __ssize_t = i64;
type __syscall_slong_t = i64;
type __syscall_ulong_t = u64;
type __loff_t = __off64_t;
type __caddr_t = *mut i8;
type __intptr_t = isize;
type __socklen_t = u32;
type __sig_atomic_t = i32;
type u_char = __u_char;
type u_short = __u_short;
type u_int = __u_int;
type u_long = __u_long;
type quad_t = __quad_t;
type u_quad_t = __u_quad_t;
type fsid_t = __fsid_t;
type loff_t = __loff_t;
type ino_t = __ino_t;
type ino64_t = __ino64_t;
type dev_t = __dev_t;
type gid_t = __gid_t;
type mode_t = __mode_t;
type nlink_t = __nlink_t;
type uid_t = __uid_t;
type off_t = __off_t;
type off64_t = __off64_t;
type pid_t = __pid_t;
type id_t = __id_t;
type ssize_t = __ssize_t;
type daddr_t = __daddr_t;
type caddr_t = __caddr_t;
type key_t = __key_t;
type clock_t = __clock_t;
type clockid_t = __clockid_t;
type time_t = __time_t;
type timer_t = __timer_t;
type ulong = u64;
type ushort = u16;
type uint = u32;
type int8_t = __int8_t;
type int16_t = __int16_t;
type int32_t = __int32_t;
type int64_t = __int64_t;
type u_int8_t = __uint8_t;
type u_int16_t = __uint16_t;
type u_int32_t = __uint32_t;
type u_int64_t = __uint64_t;

#[inline]
fn __bswap_64(__bsx: u64) -> u64 {
    ((__bsx & 0xff00000000000000) >> 56)
        | ((__bsx & 0x00ff000000000000) >> 40)
        | ((__bsx & 0x0000ff0000000000) >> 24)
        | ((__bsx & 0x000000ff00000000) >> 8)
        | ((__bsx & 0x00000000ff000000) << 8)
        | ((__bsx & 0x0000000000ff0000) << 24)
        | ((__bsx & 0x000000000000ff00) << 40)
        | ((__bsx & 0x00000000000000ff) << 56)
}