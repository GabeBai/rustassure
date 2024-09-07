fn build_kmp_table(needle: &str) -> Vec<i64> {
    let needle_len = needle.len();
    let mut kmp_table = vec![-1; needle_len as usize];
    let mut i: usize = 0;
    let mut j: i64 = -1;

    while i < needle_len {
        while j > -1 && needle.as_bytes()[i] != needle.as_bytes()[j as usize] {
            j = kmp_table[j as usize];
        }
        i += 1;
        j += 1;
        if i < needle_len as usize {
            if needle.as_bytes()[i] == needle.as_bytes()[j as usize] {
                kmp_table[i] = kmp_table[j as usize];
            } else {
                kmp_table[i] = j;
            }
        } else {
            kmp_table[i] = j;
        }
    }

    kmp_table
}
