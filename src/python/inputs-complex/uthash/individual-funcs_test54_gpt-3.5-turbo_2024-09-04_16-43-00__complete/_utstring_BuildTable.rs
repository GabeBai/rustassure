fn build_table(needle: &str, needle_len: usize, kmp_table: &mut [i64]) {
    let mut i: usize = 0;
    let mut j: i64 = -1;
    kmp_table[i] = j;
    
    while i < needle_len {
        while j > -1 && needle.as_bytes()[i] != needle.as_bytes()[j as usize] {
            j = kmp_table[j as usize];
        }
        
        i += 1;
        j += 1;
        
        if i < needle_len {
            if needle.as_bytes()[i] == needle.as_bytes()[j as usize] {
                kmp_table[i] = kmp_table[j as usize];
            } else {
                kmp_table[i] = j;
            }
        } else {
            kmp_table[i] = j;
        }
    }
}
