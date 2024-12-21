use rustls::ClientSession;
use log::{debug, error};
use std::io::{self, Read};

fn ssl_parse_server_hello_done(session: &mut ClientSession) -> Result<(), io::Error> {
    debug!("=> parse server hello done");

    // Read the record
    let mut buf = vec![0; 1024]; // Adjust buffer size as needed
    let read_result = session.read(&mut buf);

    match read_result {
        Ok(bytes_read) => {
            if bytes_read == 0 {
                error!("mbedtls_ssl_read_record: No data read");
                return Err(io::Error::new(io::ErrorKind::UnexpectedEof, "No data read"));
            }
        }
        Err(e) => {
            error!("mbedtls_ssl_read_record: {:?}", e);
            return Err(e);
        }
    }

    // Check message type
    if buf[0] != 22 {
        error!("bad server hello done message");
        return Err(io::Error::new(io::ErrorKind::InvalidData, "bad server hello done message"));
    }

    // Check message length and content
    if buf.len() != 4 || buf[1] != 14 {
        error!("bad server hello done message");
        // Send alert message (not implemented in rustls, so we just log it)
        error!("Sending alert message: level 2, description 50");
        return Err(io::Error::new(io::ErrorKind::InvalidData, "bad server hello done message"));
    }

    // Increment state (not directly applicable in rustls, so we assume state management is handled elsewhere)
    // session.state += 1;

    // Handle flight completion (not directly applicable in rustls, so we assume it's handled elsewhere)
    // if session.conf.transport == 1 {
    //     mbedtls_ssl_recv_flight_completed(session);
    // }

    debug!("<= parse server hello done");
    Ok(())
}
