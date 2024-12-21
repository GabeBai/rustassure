extern crate ring;

use ring::digest;
use ring::hmac;
use ring::error::Unspecified;

fn mbedtls_ssl_cf_hmac(
    key: &[u8],
    add_data: &[u8],
    data: &[u8],
    min_data_len: usize,
    max_data_len: usize,
    output: &mut [u8],
) -> Result<(), Unspecified> {
    let key = hmac::Key::new(hmac::HMAC_SHA256, key);
    let mut ctx = hmac::Context::with_key(&key);

    ctx.update(add_data);
    ctx.update(&data[..min_data_len]);

    for offset in min_data_len..=max_data_len {
        let mut aux_ctx = ctx.clone();
        let aux_out = aux_ctx.sign();
        output.copy_from_slice(aux_out.as_ref());

        if offset < max_data_len {
            ctx.update(&data[offset..offset + 1]);
        }
    }

    let final_tag = ctx.sign();
    output.copy_from_slice(final_tag.as_ref());

    Ok(())
}

fn main() {
    let key = b"my secret key";
    let add_data = b"additional data";
    let data = b"data to be hashed";
    let min_data_len = 5;
    let max_data_len = 10;
    let mut output = [0u8; 32]; // Adjust the size according to the hash output size

    match mbedtls_ssl_cf_hmac(key, add_data, data, min_data_len, max_data_len, &mut output) {
        Ok(_) => println!("HMAC computed successfully"),
        Err(e) => println!("Error computing HMAC: {:?}", e),
    }
}
