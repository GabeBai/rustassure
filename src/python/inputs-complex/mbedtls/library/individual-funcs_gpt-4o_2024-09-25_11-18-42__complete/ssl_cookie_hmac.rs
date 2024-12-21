use hmac::{Hmac, Mac, NewMac};
use sha2::Sha256;
use std::cmp::min;
use std::ptr::copy_nonoverlapping;

type HmacSha256 = Hmac<Sha256>;

fn ssl_cookie_hmac(
    hmac_ctx: &mut HmacSha256,
    time: &[u8; 4],
    p: &mut &mut [u8],
    end: &[u8],
    cli_id: &[u8],
) -> Result<(), i32> {
    let mut hmac_out = [0u8; 32];

    if p.len() < 28 {
        return Err(-0x6A00);
    }

    hmac_ctx.reset();
    hmac_ctx.update(time);
    hmac_ctx.update(cli_id);
    hmac_ctx.finalize_reset().into_bytes().copy_to_slice(&mut hmac_out);

    if p.len() < 28 {
        return Err(-0x6A00);
    }

    let len = min(28, p.len());
    unsafe {
        copy_nonoverlapping(hmac_out.as_ptr(), p.as_mut_ptr(), len);
    }
    *p = &mut p[len..];

    Ok(())
}

fn main() {
    // Example usage
    let mut hmac_ctx = HmacSha256::new_from_slice(b"my secret and secure key").expect("HMAC can take key of any size");
    let time = [0u8; 4];
    let mut buffer = [0u8; 64];
    let mut p = &mut buffer[..];
    let end = &buffer[buffer.len()..];
    let cli_id = b"client_id";

    match ssl_cookie_hmac(&mut hmac_ctx, &time, &mut p, end, cli_id) {
        Ok(_) => println!("HMAC successful"),
        Err(e) => println!("HMAC failed with error code: {}", e),
    }
}
