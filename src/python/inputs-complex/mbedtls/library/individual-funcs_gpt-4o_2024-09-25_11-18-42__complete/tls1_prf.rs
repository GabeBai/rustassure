extern crate alloc;
use alloc::vec::Vec;
use alloc::alloc::{alloc_zeroed, dealloc, Layout};
use core::ptr;
use md5::{Md5, HmacMd5};
use sha2::{Sha1, HmacSha1, Digest};
use core::ffi::c_void;
use core::slice;
use core::str;

fn tls1_prf(secret: &[u8], label: &str, random: &[u8], dstbuf: &mut [u8]) -> Result<(), i32> {
    let slen = secret.len();
    let dlen = dstbuf.len();
    let hs = (slen + 1) / 2;
    let S1 = &secret[..hs];
    let S2 = &secret[slen - hs..];

    let tmp_len = 20 + label.len() + random.len();
    let layout = Layout::from_size_align(tmp_len, 1).unwrap();
    let tmp_ptr = unsafe { alloc_zeroed(layout) };
    if tmp_ptr.is_null() {
        return Err(-0x7F00);
    }
    let tmp = unsafe { slice::from_raw_parts_mut(tmp_ptr, tmp_len) };

    tmp[20..20 + label.len()].copy_from_slice(label.as_bytes());
    tmp[20 + label.len()..20 + label.len() + random.len()].copy_from_slice(random);

    let nb = label.len() + random.len();

    let mut h_i = [0u8; 20];

    // MD5 part
    let mut hmac_md5 = HmacMd5::new_from_slice(S1).unwrap();
    hmac_md5.update(&tmp[20..20 + nb]);
    let mut md5_result = hmac_md5.finalize().into_bytes();
    tmp[4..4 + 16].copy_from_slice(&md5_result);

    for i in (0..dlen).step_by(16) {
        hmac_md5 = HmacMd5::new_from_slice(S1).unwrap();
        hmac_md5.update(&tmp[4..4 + 16 + nb]);
        md5_result = hmac_md5.finalize().into_bytes();
        h_i.copy_from_slice(&md5_result);

        hmac_md5 = HmacMd5::new_from_slice(S1).unwrap();
        hmac_md5.update(&tmp[4..4 + 16]);
        md5_result = hmac_md5.finalize().into_bytes();
        tmp[4..4 + 16].copy_from_slice(&md5_result);

        let k = if i + 16 > dlen { dlen % 16 } else { 16 };
        for j in 0..k {
            dstbuf[i + j] = h_i[j];
        }
    }

    // SHA1 part
    let mut hmac_sha1 = HmacSha1::new_from_slice(S2).unwrap();
    hmac_sha1.update(&tmp[20..20 + nb]);
    let mut sha1_result = hmac_sha1.finalize().into_bytes();
    tmp[..20].copy_from_slice(&sha1_result);

    for i in (0..dlen).step_by(20) {
        hmac_sha1 = HmacSha1::new_from_slice(S2).unwrap();
        hmac_sha1.update(&tmp[..20 + nb]);
        sha1_result = hmac_sha1.finalize().into_bytes();
        h_i.copy_from_slice(&sha1_result);

        hmac_sha1 = HmacSha1::new_from_slice(S2).unwrap();
        hmac_sha1.update(&tmp[..20]);
        sha1_result = hmac_sha1.finalize().into_bytes();
        tmp[..20].copy_from_slice(&sha1_result);

        let k = if i + 20 > dlen { dlen % 20 } else { 20 };
        for j in 0..k {
            dstbuf[i + j] ^= h_i[j];
        }
    }

    unsafe {
        ptr::write_bytes(tmp_ptr, 0, tmp_len);
        dealloc(tmp_ptr, layout);
    }

    Ok(())
}

fn main() {
    // Example usage
    let secret = b"secret";
    let label = "label";
    let random = b"random";
    let mut dstbuf = vec![0u8; 32];

    match tls1_prf(secret, label, random, &mut dstbuf) {
        Ok(_) => println!("PRF output: {:?}", dstbuf),
        Err(e) => println!("Error: {}", e),
    }
}
