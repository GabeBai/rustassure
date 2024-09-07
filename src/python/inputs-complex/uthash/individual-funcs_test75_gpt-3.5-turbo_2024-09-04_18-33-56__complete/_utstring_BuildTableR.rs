fn build_table_r(needle: &str, needle_len: usize, kmp_table: &mut [i64]) {
    let mut i = needle_len as i64 - 1;
    let mut j = i + 1;
    kmp_table[i as usize + 1] = j;
    while i >= 0 {
        while j < needle_len as i64 && needle.as_bytes()[i as usize] != needle.as_bytes()[j as usize] {
            j = kmp_table[j as usize + 1];
        }
        i -= 1;
        j -= 1;
        if i >= 0 {
            if needle.as_bytes()[i as usize] == needle.as_bytes()[j as usize] {
                kmp_table[i as usize + 1] = kmp_table[j as usize + 1];
            } else {
                kmp_table[i as usize + 1] = j;
            }
        } else {
            kmp_table[i as usize + 1] = j;
        }
    }
}
