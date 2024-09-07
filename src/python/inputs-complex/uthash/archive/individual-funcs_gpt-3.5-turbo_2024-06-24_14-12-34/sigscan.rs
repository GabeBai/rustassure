use std::os::unix::io::RawFd;
use std::io::{Seek, SeekFrom, Read};
use std::mem;

const sig: u32 = 0xa0111fe1u;

fn sigscan(fd: RawFd, start: i64, end: i64, sig: u32, pid: libc::pid_t) {
    let mut at = 0;
    if let Err(err) = nix::unistd::lseek(fd, start, nix::unistd::Whence::SeekSet) {
        eprintln!("lseek failed: {}", nix::errno::from_i32(err.errno()));
        return;
    }
    let mut u: u32 = 0;
    let mut buf = [0u8; mem::size_of::<u32>()];
    while let Ok(rlen) = nix::unistd::read(fd, &mut buf) {
        if rlen == 0 {
            break;
        }
        u = u32::from_ne_bytes(buf);
        if u == sig {
            found(fd, (start + at) as *const i8, pid);
        }
        at += mem::size_of::<u32>() as i64;
        if at + mem::size_of::<u32>() as i64 > end - start {
            break;
        }
    }
}
