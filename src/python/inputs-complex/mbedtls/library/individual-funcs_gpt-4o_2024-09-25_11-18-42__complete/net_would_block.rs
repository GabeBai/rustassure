extern crate nix;

use nix::errno::Errno;
use nix::fcntl::{fcntl, FcntlArg, OFlag};
use nix::unistd::Fd;

struct MbedtlsNetContext {
    fd: Fd,
}

fn net_would_block(ctx: &MbedtlsNetContext) -> bool {
    let err = Errno::last();
    if let Ok(flags) = fcntl(ctx.fd, FcntlArg::F_GETFL) {
        if (flags & OFlag::O_NONBLOCK.bits()) != OFlag::O_NONBLOCK.bits() {
            Errno::set(err);
            return false;
        }
    } else {
        Errno::set(err);
        return false;
    }

    match err {
        Errno::EAGAIN => true,
        _ => false,
    }
}

fn main() {
    // Example usage
    let ctx = MbedtlsNetContext { fd: 0 }; // Replace 0 with the actual file descriptor
    let result = net_would_block(&ctx);
    println!("Would block: {}", result);
}
