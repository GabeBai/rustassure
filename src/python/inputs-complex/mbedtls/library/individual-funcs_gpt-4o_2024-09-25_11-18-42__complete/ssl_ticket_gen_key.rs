use rand::RngCore;
use std::time::{SystemTime, UNIX_EPOCH};
use mbedtls::cipher::{Cipher, CipherMode, Operation};
use zeroize::Zeroize;

struct MbedtlsSslTicketContext {
    keys: [MbedtlsSslTicketKey; 2],
    f_rng: fn(&mut dyn RngCore, &mut [u8]) -> Result<(), ()>,
    p_rng: Box<dyn RngCore>,
}

struct MbedtlsSslTicketKey {
    name: [u8; 4],
    generation_time: u32,
    ctx: Cipher,
}

fn ssl_ticket_gen_key(ctx: &mut MbedtlsSslTicketContext, index: usize) -> Result<(), i32> {
    let mut ret = -0x006E;
    let mut buf = [0u8; 32];
    let key = &mut ctx.keys[index];

    key.generation_time = SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .expect("Time went backwards")
        .as_secs() as u32;

    if (ctx.f_rng)(&mut *ctx.p_rng, &mut key.name).is_err() {
        return Err(ret);
    }

    if (ctx.f_rng)(&mut *ctx.p_rng, &mut buf).is_err() {
        return Err(ret);
    }

    ret = match key.ctx.set_key(&buf, Operation::Encrypt) {
        Ok(_) => 0,
        Err(_) => ret,
    };

    buf.zeroize();
    if ret == 0 {
        Ok(())
    } else {
        Err(ret)
    }
}
