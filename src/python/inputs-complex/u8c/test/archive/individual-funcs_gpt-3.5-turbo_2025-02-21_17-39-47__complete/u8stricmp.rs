use std::os::raw::c_char;

extern "C" {
    fn u8next_(txt: *const c_char, ch: *mut i32) -> i32;
    fn u8fold(cp: i32) -> i32;
}

fn u8stricmp(s: *mut c_char, t: *mut c_char) -> i32 {
    unsafe {
        let mut ls: i32;
        let mut lt: i32;
        let mut cs = 0;
        let mut ct = 0;

        for _ in 0..1024 * 1024 {
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
                lt = -lt;
            }

            s = s.offset(ls as isize);
            t = t.offset(lt as isize);
        }
    }

    0
}
