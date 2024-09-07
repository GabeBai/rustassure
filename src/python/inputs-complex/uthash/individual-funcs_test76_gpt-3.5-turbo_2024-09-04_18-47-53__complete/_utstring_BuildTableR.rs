fn build_kmp_table(needle: &str, kmp_table: &mut [i64]) {
    let needle_len = needle.len();
    let mut i = (needle_len - 1) as usize;
    let mut j = i + 1;
    kmp_table[i] = j as i64;

    while i > 0 {
        while j < needle_len as usize && needle.as_bytes()[i] != needle.as_bytes()[j] {
            j = kmp_table[j + 1] as usize;
        }
        i -= 1;
        j -= 1;
        if i > 0 {
            if needle.as_bytes()[i] == needle.as_bytes()[j] {
                kmp_table[i] = kmp_table[j];
            } else {
                kmp_table[i] = j as i64;
            }
        } else {
            kmp_table[i] = j as i64;
        }
    }
}

fn main() {
    let needle = "example";
    let mut kmp_table = vec![0; needle.len()];
    build_kmp_table(needle, &mut kmp_table);
    println!("{:?}", kmp_table);
}
