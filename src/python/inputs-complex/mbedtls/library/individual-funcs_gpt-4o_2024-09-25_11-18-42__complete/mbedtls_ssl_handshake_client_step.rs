extern crate mbedtls;

use mbedtls::ssl::{Context as SslContext, HandshakeStep, Transport};
use mbedtls::debug::print_msg;
use mbedtls::error::Result;

fn mbedtls_ssl_handshake_client_step(ssl: &mut SslContext) -> Result<()> {
    if ssl.state == HandshakeStep::HandshakeOver || ssl.handshake.is_none() {
        return Err(mbedtls::error::Error::from_code(-0x7100));
    }

    print_msg(ssl, 2, "ssl_cli.rs", 4159, &format!("client state: {:?}", ssl.state));

    ssl.flush_output()?;

    if ssl.conf.transport == Transport::Datagram && ssl.handshake.as_ref().unwrap().retransmit_state == 1 {
        ssl.flight_transmit()?;
    }

    if ssl.state == HandshakeStep::ServerChangeCipherSpec && ssl.handshake.as_ref().unwrap().new_session_ticket != 0 {
        ssl.state = HandshakeStep::ServerNewSessionTicket;
    }

    match ssl.state {
        HandshakeStep::HelloRequest => {
            ssl.state = HandshakeStep::ClientHello;
        }
        HandshakeStep::ClientHello => {
            ssl.write_client_hello()?;
        }
        HandshakeStep::ServerHello => {
            ssl.parse_server_hello()?;
        }
        HandshakeStep::ServerCertificate => {
            ssl.parse_certificate()?;
        }
        HandshakeStep::ServerKeyExchange => {
            ssl.parse_server_key_exchange()?;
        }
        HandshakeStep::CertificateRequest => {
            ssl.parse_certificate_request()?;
        }
        HandshakeStep::ServerHelloDone => {
            ssl.parse_server_hello_done()?;
        }
        HandshakeStep::ClientCertificate => {
            ssl.write_certificate()?;
        }
        HandshakeStep::ClientKeyExchange => {
            ssl.write_client_key_exchange()?;
        }
        HandshakeStep::CertificateVerify => {
            ssl.write_certificate_verify()?;
        }
        HandshakeStep::ClientChangeCipherSpec => {
            ssl.write_change_cipher_spec()?;
        }
        HandshakeStep::ClientFinished => {
            ssl.write_finished()?;
        }
        HandshakeStep::ServerNewSessionTicket => {
            ssl.parse_new_session_ticket()?;
        }
        HandshakeStep::ServerChangeCipherSpec => {
            ssl.parse_change_cipher_spec()?;
        }
        HandshakeStep::ServerFinished => {
            ssl.parse_finished()?;
        }
        HandshakeStep::FlushBuffers => {
            print_msg(ssl, 2, "ssl_cli.rs", 4270, "handshake: done");
            ssl.state = HandshakeStep::HandshakeWrapup;
        }
        HandshakeStep::HandshakeWrapup => {
            ssl.handshake_wrapup();
        }
        _ => {
            print_msg(ssl, 1, "ssl_cli.rs", 4279, &format!("invalid state {:?}", ssl.state));
            return Err(mbedtls::error::Error::from_code(-0x7100));
        }
    }

    Ok(())
}
