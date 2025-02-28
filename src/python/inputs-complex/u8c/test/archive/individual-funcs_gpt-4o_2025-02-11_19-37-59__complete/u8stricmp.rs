#![allow(unaligned_references)]
use unicode_normalization::UnicodeNormalization;
use unicode_segmentation::UnicodeSegmentation;

#[no_mangle]
#[no_mangle]
fn u8stricmp(s: &str, t: &str) -> i32 {
    let mut s_iter = s.nfkc().flat_map(|c| c.to_lowercase());
    let mut t_iter = t.nfkc().flat_map(|c| c.to_lowercase());

    loop {
        let cs = s_iter.next();
        let ct = t_iter.next();

        match (cs, ct) {
            (Some(cs_char), Some(ct_char)) => {
                if cs_char != ct_char {
                    return cs_char as i32 - ct_char as i32;
                }
            }
            (None, None) => return 0, // Both strings are fully compared and equal
            (None, Some(_)) => return -1, // s is shorter than t
            (Some(_), None) => return 1,  // t is shorter than s
        }
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let s = "Straße";
    let t = "strasse";
    let result = u8stricmp(s, t);
    println!("Comparison result: {}", result);
}
