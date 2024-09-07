use std::convert::TryInto;

fn utstring_find(
    haystack: &[u8],
    haystack_len: usize,
    needle: &[u8],
    needle_len: usize,
    kmp_table: &mut [isize],
) -> isize {
    let mut i: isize = 0;
    let mut j: usize = 0;
    let mut find_position: isize = -1;

    while j < haystack_len && (haystack_len - j) as isize + i >= needle_len as isize {
        while i > -1 && needle[i as usize] != haystack[j] {
            i = kmp_table[i as usize];
        }
        i += 1;
        j += 1;
        if i as usize >= needle_len {
            find_position = j as isize - i;
            break;
        }
    }

    find_position
}
