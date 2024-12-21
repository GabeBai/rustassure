use ring::hmac;
use std::ffi::CString;
use std::ptr;
use std::slice;

fn tls_prf_generic(
    md_type: hmac::Algorithm,
    secret: &[u8],
    label: &str,
    random: &[u8],
    dstbuf: &mut [u8],
) -> Result<(), &'static str> {
    let md_len = md_type.digest_algorithm().output_len;
    let tmp_len = md_len + label.len() + random.len();
    let mut tmp = vec![0u8; tmp_len];

    // Copy label and random into tmp
    tmp[md_len..md_len + label.len()].copy_from_slice(label.as_bytes());
    tmp[md_len + label.len()..].copy_from_slice(random);

    let nb = label.len() + random.len();

    let key = hmac::Key::new(md_type, secret);
    let mut ctx = hmac::Context::with_key(&key);
    ctx.update(&tmp[md_len..md_len + nb]);
    let mut tmp_hmac = ctx.sign().as_ref().to_vec();

    for i in (0..dstbuf.len()).step_by(md_len) {
        let mut ctx = hmac::Context::with_key(&key);
        ctx.update(&tmp[..md_len + nb]);
        let h_i = ctx.sign().as_ref().to_vec();

        let mut ctx = hmac::Context::with_key(&key);
        ctx.update(&tmp[..md_len]);
        tmp_hmac = ctx.sign().as_ref().to_vec();

        let k = if i + md_len > dstbuf.len() {
            dstbuf.len() % md_len
        } else {
            md_len
        };

        for j in 0..k {
            dstbuf[i + j] = h_i[j];
        }
    }

    // Zeroize sensitive data
    tmp.iter_mut().for_each(|x| *x = 0);
    tmp_hmac.iter_mut().for_each(|x| *x = 0);

    Ok(())
}

fn main() {
    let secret = b"secret";
    let label = "label";
    let random = b"random";
    let mut dstbuf = vec![0u8; 64];

    match tls_prf_generic(hmac::HMAC_SHA256, secret, label, random, &mut dstbuf) {
        Ok(_) => println!("Success"),
        Err(e) => println!("Error: {}", e),
    }

    println!("Output: {:?}", dstbuf);
}
