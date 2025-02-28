use std::ffi::CStr;

extern "C" {
    fn u8next_(txt: *const i8, ch: *mut i32) -> i32;
    fn u8fold(cp: i32) -> i32;
}

#[no_mangle]
pub unsafe extern "C" fn u8stricmp(s: *mut i8, t: *mut i8) -> i32 {
    let mut ls: i32;
    let mut lt: i32;
    let mut cs: i32 = 0;
    let mut ct: i32 = 0;

    for _ in 0..1024*1024 {
        ls = u8next_(s, &mut cs);
        lt = u8next_(t, &mut ct);
        cs = u8fold(cs);
        ct = u8fold(ct);
        if cs != ct {
            return cs - ct;
        }
        if ls == 0 {
            return 0;
        }
        if ls < 0 {
            ls = -ls;
        }
        if lt < 0 {
            lt = -ls;
        }
        s = s.offset(ls as isize);
        t = t.offset(lt as isize);
    }
    0
}