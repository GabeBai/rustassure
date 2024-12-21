pub struct MbedtlsNetContext {
    fd: i32,
}

pub fn mbedtls_net_init(ctx: &mut MbedtlsNetContext) {
    ctx.fd = -1;
}
