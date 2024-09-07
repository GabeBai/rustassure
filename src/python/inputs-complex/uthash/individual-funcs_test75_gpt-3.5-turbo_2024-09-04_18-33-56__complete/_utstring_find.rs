use std::convert::TryInto;

fn utstring_find(
    P_Haystack: &[u8],
    P_Needle: &[u8],
    P_KMP_Table: &mut [i64],
) -> i64 {
    let mut i: i64 = 0;
    let mut j: i64 = 0;
    let mut V_FindPosition: i64 = -1;

    while (j < P_Haystack.len() as i64) && ((P_Haystack.len() as i64 - j) + i) >= P_Needle.len() as i64 {
        while i > -1 && P_Needle[i as usize] != P_Haystack[j as usize] {
            i = P_KMP_Table[i as usize];
        }
        i += 1;
        j += 1;
        if i >= P_Needle.len() as i64 {
            V_FindPosition = j - i;
            break;
        }
    }

    V_FindPosition
}
