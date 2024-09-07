use std::os::raw::c_char;

fn _utstring_BuildTable(
    P_Needle: *const c_char,
    P_NeedleLen: usize,
    P_KMP_Table: &mut [i64],
) {
    let mut i: usize = 0;
    let mut j: i64 = -1;
    P_KMP_Table[i] = j;
    while i < P_NeedleLen {
        while j > -1 && unsafe { *P_Needle.add(i) } != unsafe { *P_Needle.add(j as usize) } {
            j = P_KMP_Table[j as usize];
        }
        i += 1;
        j += 1;
        if i < P_NeedleLen {
            if unsafe { *P_Needle.add(i) } == unsafe { *P_Needle.add(j as usize) } {
                P_KMP_Table[i] = P_KMP_Table[j as usize];
            } else {
                P_KMP_Table[i] = j;
            }
        } else {
            P_KMP_Table[i] = j;
        }
    }
}
