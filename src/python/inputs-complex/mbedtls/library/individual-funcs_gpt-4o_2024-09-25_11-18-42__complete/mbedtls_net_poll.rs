use mio::net::TcpStream;
use mio::{Events, Interest, Poll, Token};
use std::time::Duration;
use std::io;

const READABLE: Token = Token(0);
const WRITABLE: Token = Token(1);

pub struct MbedtlsNetContext {
    fd: TcpStream,
}

pub fn mbedtls_net_poll(ctx: &MbedtlsNetContext, rw: u32, timeout: u32) -> io::Result<u32> {
    let mut poll = Poll::new()?;
    let mut events = Events::with_capacity(1024);

    let mut interest = Interest::empty();
    if rw & 1 != 0 {
        interest |= Interest::READABLE;
    }
    if rw & 2 != 0 {
        interest |= Interest::WRITABLE;
    }

    poll.registry().register(&ctx.fd, READABLE, interest)?;

    let timeout = if timeout == u32::MAX {
        None
    } else {
        Some(Duration::from_millis(timeout as u64))
    };

    poll.poll(&mut events, timeout)?;

    let mut ret = 0;
    for event in events.iter() {
        if event.is_readable() {
            ret |= 1;
        }
        if event.is_writable() {
            ret |= 2;
        }
    }

    Ok(ret)
}
