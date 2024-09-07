use std::convert::TryInto;

fn build_table_r(needle: &str, needle_len: usize, kmp_table: &mut [i64]) {
    let mut i = needle_len as i64 - 1;
    let mut j = i + 1;
    kmp_table[i as usize] = j;

    while i >= 0 {
        while j < needle_len as i64 && needle.as_bytes()[i as usize] != needle.as_bytes()[j as usize] {
            j = unsafe { *kmp_table.get_unchecked((j + 1) as usize) };
        }
        i -= 1;
        j -= 1;
        if i >= 0 {
            if needle.as_bytes()[i as usize] == needle.as_bytes()[j as usize] {
                kmp_table[i as usize] = kmp_table[j as usize];
            } else {
                kmp_table[i as usize] = j;
            }
        } else {
            kmp_table[i as usize] = j;
        }
    }
}

fn main() {
    let needle = "example";
    let needle_len = needle.len();
    let mut kmp_table = vec![0; needle_len];

    build_table_r(needle, needle_len, &mut kmp_table);

    println!("{:?}", kmp_table);
}
