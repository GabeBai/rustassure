use std::io::Write;
use std::os::unix::io::AsRawFd;
use std::os::unix::net::UnixStream;

struct MbedtlsNetContext {
    fd: UnixStream,
}

fn mbedtls_net_send(ctx: &mut MbedtlsNetContext, buf: &[u8]) -> i32 {
    let fd = ctx.fd.as_raw_fd();
    if fd < 0 {
        return -0x0045;
    }
    match ctx.fd.write(buf) {
        Ok(ret) => ret as i32,
        Err(e) => {
            if e.kind() == std::io::ErrorKind::WouldBlock {
                return -0x6880;
            }
            match e.raw_os_error() {
                Some(32) | Some(104) => -0x0050,
                Some(4) => -0x6880,
                _ => -0x004E,
            }
        }
    }
}
