#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn u8strncpy(dest: &mut [u8], src: &[u8], n: usize) {
    let len = dest.len().min(n);
    for i in 0..len {
        if i < src.len() {
            dest[i] = src[i];
        } else {
            dest[i] = 0; // Null-terminate if src is shorter than n
        }
    }
    if len < dest.len() {
        dest[len] = 0; // Null-terminate if there's space
    }
}

#[no_mangle]
#[no_mangle]
fn u8strncat<'a>(dest: &'a mut [u8], src: &[u8], n: usize) -> &'a mut [u8] {
    let mut d_len = 0;
    while d_len < dest.len() && dest[d_len] != 0 {
        d_len += 1;
    }

    let copy_len = (n).min(src.len()).min(dest.len() - d_len);
    u8strncpy(&mut dest[d_len..], src, copy_len);

    if d_len + copy_len < dest.len() {
        dest[d_len + copy_len] = 0; // Null-terminate
    }

    dest
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut dest = [0u8; 20];
    let src = b"Hello";
    dest[..6].copy_from_slice(b"World\0");

    u8strncat(&mut dest, src, 3);
    println!("{:?}", &dest[..]); // Should print "WorldHel"
}
