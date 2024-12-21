use rustls::internal::msgs::handshake::HandshakeMessagePayload;
use rustls::internal::msgs::handshake::HandshakePayload;
use rustls::internal::msgs::message::Message;
use rustls::internal::msgs::enums::ContentType;
use rustls::internal::msgs::enums::AlertLevel;
use rustls::internal::msgs::enums::AlertDescription;
use rustls::internal::msgs::codec::Codec;
use rustls::internal::msgs::handshake::HandshakeType;
use rustls::internal::msgs::handshake::CertificateRequestPayload;
use rustls::internal::msgs::handshake::HandshakePayload::CertificateRequest;

fn ssl_parse_certificate_request(ssl: &mut rustls::ServerSession) -> Result<(), rustls::TLSError> {
    let ciphersuite_info = ssl.get_negotiated_ciphersuite().ok_or(rustls::TLSError::General("No ciphersuite negotiated".to_string()))?;
    
    if !ciphersuite_info.ciphersuite.supports_client_auth() {
        ssl.set_state(ssl.get_state() + 1);
        return Ok(());
    }

    let message = ssl.read_tls_message()?;
    if message.typ != ContentType::Handshake {
        ssl.send_alert(AlertLevel::Fatal, AlertDescription::UnexpectedMessage)?;
        return Err(rustls::TLSError::General("Bad certificate request message".to_string()));
    }

    let payload = match message.payload {
        HandshakeMessagePayload::Handshake(ref handshake) => handshake,
        _ => {
            ssl.send_alert(AlertLevel::Fatal, AlertDescription::UnexpectedMessage)?;
            return Err(rustls::TLSError::General("Bad certificate request message".to_string()));
        }
    };

    if payload.typ != HandshakeType::CertificateRequest {
        ssl.send_alert(AlertLevel::Fatal, AlertDescription::UnexpectedMessage)?;
        return Err(rustls::TLSError::General("Bad certificate request message".to_string()));
    }

    let cert_req = match payload.payload {
        CertificateRequest(ref cert_req) => cert_req,
        _ => {
            ssl.send_alert(AlertLevel::Fatal, AlertDescription::UnexpectedMessage)?;
            return Err(rustls::TLSError::General("Bad certificate request message".to_string()));
        }
    };

    ssl.set_state(ssl.get_state() + 1);
    ssl.set_client_auth(cert_req.certificates.is_some());

    if !ssl.get_client_auth() {
        ssl.set_keep_current_message(true);
        return Ok(());
    }

    // Additional parsing and validation can be done here if needed

    Ok(())
}
