use rustls::internal::msgs::handshake::HandshakeMessagePayload;
use rustls::internal::msgs::handshake::HandshakePayload;
use rustls::internal::msgs::message::Message;
use rustls::internal::msgs::message::MessagePayload;
use rustls::internal::msgs::enums::ContentType;
use rustls::internal::msgs::enums::HandshakeType;
use rustls::internal::msgs::codec::Codec;
use rustls::ServerSession;
use std::io::Write;

fn ssl_write_server_key_exchange(session: &mut ServerSession) -> Result<(), rustls::TLSError> {
    let ciphersuite_info = session.get_negotiated_ciphersuite().ok_or(rustls::TLSError::General("No ciphersuite".to_string()))?;
    
    println!("=> write server key exchange");

    if !ciphersuite_info.perfect_forward_secrecy {
        if ciphersuite_info.kx == rustls::kx::KeyExchangeAlgorithm::ECDHE {
            // ssl_get_ecdh_params_from_cert(session); // Implement this function based on your needs
        }
        println!("<= skip write server key exchange");
        session.set_state(session.get_state() + 1);
        return Ok(());
    }

    let mut signature_len = 0;
    // ret = ssl_prepare_server_key_exchange(session, &mut signature_len); // Implement this function based on your needs
    let ret = 0; // Placeholder for the actual implementation

    if ret != 0 {
        if ret == -0x6500 {
            println!("<= write server key exchange (pending)");
        } else {
            session.writer().write_all(&[])?;
        }
        return Err(rustls::TLSError::General("Error preparing server key exchange".to_string()));
    }

    if signature_len != 0 {
        let mut out_msg = vec![];
        out_msg.push((signature_len >> 8) as u8);
        out_msg.push(signature_len as u8);
        println!("my signature: {:?}", &out_msg[2..2 + signature_len]);
        out_msg.extend_from_slice(&vec![0; signature_len]); // Placeholder for the actual signature
        session.writer().write_all(&out_msg)?;
    }

    let mut msg = Message {
        typ: ContentType::Handshake,
        version: session.get_protocol_version(),
        payload: MessagePayload::Handshake(HandshakeMessagePayload {
            typ: HandshakeType::ServerKeyExchange,
            payload: HandshakePayload::ServerKeyExchange(vec![]), // Placeholder for the actual payload
        }),
    };

    session.set_state(session.get_state() + 1);

    session.writer().write_all(&msg.get_encoding())?;

    println!("<= write server key exchange");
    Ok(())
}
