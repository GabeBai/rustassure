use std::os::raw::c_char;

extern "C" {
    fn u8next_(txt: *const c_char, ch: *mut i32) -> i32;
    fn u8fold(cp: i32) -> i32;
}

fn u8stricmp(s: *mut i8, t: *mut i8) -> i32 {
    let mut s = s;
    let mut t = t;
    let mut ls;
    let mut lt;
    let mut cs = 0;
    let mut ct = 0;

    for _ in 0..1024 * 1024 {
        unsafe {
            ls = u8next_(s as *const c_char, &mut cs);
            lt = u8next_(t as *const c_char, &mut ct);
            cs = u8fold(cs);
            ct = u8fold(ct);
        }

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
            lt = -lt;
        }

        unsafe {
            s = s.offset(ls as isize);
            t = t.offset(lt as isize);
        }
    }

    0
}
