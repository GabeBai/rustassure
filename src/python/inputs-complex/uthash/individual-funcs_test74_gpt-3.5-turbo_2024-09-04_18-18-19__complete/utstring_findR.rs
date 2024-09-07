use std::mem;

struct UTString {
    d: *mut i8,
    n: usize,
    i: usize,
}

#[no_mangle]
pub extern "C" fn utstring_findR(
    s: *mut UTString,
    P_StartPosition: i64,
    P_Needle: *const i8,
    P_NeedleLen: usize,
) -> i64 {
    let mut V_StartPosition: i64;
    let mut V_HaystackLen: i64;
    let mut V_KMP_Table: *mut i64;
    let mut V_FindPosition: i64 = -1;

    let s = unsafe { &mut *s };

    if P_StartPosition < 0 {
        V_StartPosition = s.i as i64 + P_StartPosition;
    } else {
        V_StartPosition = P_StartPosition;
    }

    V_HaystackLen = V_StartPosition + 1;

    if V_HaystackLen >= P_NeedleLen as i64 && P_NeedleLen > 0 {
        V_KMP_Table = unsafe { libc::malloc(mem::size_of::<i64>() * (P_NeedleLen + 1)) as *mut i64 };

        if !V_KMP_Table.is_null() {
            _utstring_BuildTableR(P_Needle, P_NeedleLen, V_KMP_Table);
            V_FindPosition = _utstring_findR(s.d, V_HaystackLen as usize, P_Needle, P_NeedleLen, V_KMP_Table);
            unsafe { libc::free(V_KMP_Table as *mut std::ffi::c_void) };
        }
    }

    V_FindPosition
}

fn _utstring_BuildTableR(P_Needle: *const i8, P_NeedleLen: usize, V_KMP_Table: *mut i64) {
    // Implement the logic for _utstring_BuildTableR here
}

fn _utstring_findR(
    s: *mut i8,
    V_HaystackLen: usize,
    P_Needle: *const i8,
    P_NeedleLen: usize,
    V_KMP_Table: *mut i64,
) -> i64 {
    // Implement the logic for _utstring_findR here
    -1
}
