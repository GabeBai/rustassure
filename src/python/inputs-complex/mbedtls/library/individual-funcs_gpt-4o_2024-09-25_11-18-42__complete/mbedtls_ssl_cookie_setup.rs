use mbedtls::hash::{Md, Type};
use mbedtls::platform::zeroize;
use mbedtls::rng::OsEntropy;
use mbedtls::Error;

struct MbedtlsSslCookieCtx {
    hmac_ctx: Md,
    timeout: u64,
}

impl MbedtlsSslCookieCtx {
    fn setup<F>(ctx: &mut MbedtlsSslCookieCtx, f_rng: F) -> Result<(), Error>
    where
        F: Fn(&mut [u8]) -> Result<(), Error>,
    {
        let mut key = [0u8; 32];
        f_rng(&mut key)?;

        ctx.hmac_ctx = Md::setup(Type::Sha224, true)?;
        ctx.hmac_ctx.hmac_starts(&key)?;

        zeroize(&mut key);
        Ok(())
    }
}

fn main() -> Result<(), Error> {
    let mut ctx = MbedtlsSslCookieCtx {
        hmac_ctx: Md::setup(Type::Sha224, true)?,
        timeout: 0,
    };

    let mut rng = OsEntropy::new();
    MbedtlsSslCookieCtx::setup(&mut ctx, |buf| rng.random(buf))?;

    Ok(())
}
