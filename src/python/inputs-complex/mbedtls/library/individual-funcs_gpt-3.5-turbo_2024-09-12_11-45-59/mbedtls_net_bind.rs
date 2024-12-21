use std::net::{SocketAddr, TcpListener, UdpSocket};
use std::io;

fn mbedtls_net_bind(ctx: &mut mbedtls_net_context, bind_ip: Option<&str>, port: &str, proto: i32) -> Result<(), i32> {
    let addr = match bind_ip {
        Some(ip) => format!("{}:{}", ip, port),
        None => format!("0.0.0.0:{}", port),
    };

    let addr: SocketAddr = addr.parse().unwrap();
    
    match proto {
        0 => {
            let listener = TcpListener::bind(addr).unwrap();
            ctx.fd = listener.as_raw_fd();
        },
        1 => {
            let socket = UdpSocket::bind(addr).unwrap();
            ctx.fd = socket.as_raw_fd();
        },
        _ => return Err(-1), // Handle unsupported protocol
    }

    Ok(())
}
