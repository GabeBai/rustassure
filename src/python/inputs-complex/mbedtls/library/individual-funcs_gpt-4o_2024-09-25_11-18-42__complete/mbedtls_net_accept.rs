use std::io::{self, Read};
use std::mem;
use std::net::{SocketAddr, TcpListener, TcpStream, UdpSocket};
use std::os::unix::io::{AsRawFd, FromRawFd, RawFd};

fn mbedtls_net_accept(
    bind_ctx: &TcpListener,
    client_ctx: &mut Option<TcpStream>,
    client_ip: Option<&mut [u8]>,
) -> io::Result<()> {
    let (mut stream, addr) = bind_ctx.accept()?;
    if let Some(client_ip) = client_ip {
        match addr {
            SocketAddr::V4(addr_v4) => {
                let ip_bytes = addr_v4.ip().octets();
                if client_ip.len() < ip_bytes.len() {
                    return Err(io::Error::new(io::ErrorKind::InvalidInput, "Buffer too small"));
                }
                client_ip[..ip_bytes.len()].copy_from_slice(&ip_bytes);
            }
            SocketAddr::V6(addr_v6) => {
                let ip_bytes = addr_v6.ip().octets();
                if client_ip.len() < ip_bytes.len() {
                    return Err(io::Error::new(io::ErrorKind::InvalidInput, "Buffer too small"));
                }
                client_ip[..ip_bytes.len()].copy_from_slice(&ip_bytes);
            }
        }
    }
    *client_ctx = Some(stream);
    Ok(())
}

fn main() -> io::Result<()> {
    let bind_addr = "127.0.0.1:8080";
    let listener = TcpListener::bind(bind_addr)?;
    let mut client_ctx: Option<TcpStream> = None;
    let mut client_ip = [0u8; 16]; // IPv6 max length

    mbedtls_net_accept(&listener, &mut client_ctx, Some(&mut client_ip))?;

    if let Some(stream) = client_ctx {
        println!("Accepted connection from {:?}", stream.peer_addr()?);
    }

    Ok(())
}
