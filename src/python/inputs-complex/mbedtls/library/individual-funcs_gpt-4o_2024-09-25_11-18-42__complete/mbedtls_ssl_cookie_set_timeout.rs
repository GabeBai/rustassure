use std::time::Duration;

struct MbedtlsSslCookieCtx {
    hmac_ctx: MbedtlsMdContext,
    timeout: Duration,
}

struct MbedtlsMdContext;

fn mbedtls_ssl_cookie_set_timeout(ctx: &mut MbedtlsSslCookieCtx, delay: u64) {
    ctx.timeout = Duration::from_secs(delay);
}
