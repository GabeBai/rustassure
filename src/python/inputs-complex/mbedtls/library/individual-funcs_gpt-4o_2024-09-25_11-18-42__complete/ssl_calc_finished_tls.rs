use md5::{Md5, Digest as Md5Digest};
use sha1::{Sha1, Digest as Sha1Digest};
use zeroize::Zeroize;

struct MbedtlsSslContext {
    session_negotiate: Option<MbedtlsSslSession>,
    session: Option<MbedtlsSslSession>,
    handshake: Option<MbedtlsSslHandshakeParams>,
}

struct MbedtlsSslSession {
    master: [u8; 48],
}

struct MbedtlsSslHandshakeParams {
    fin_md5: Md5,
    fin_sha1: Sha1,
    tls_prf: fn(&[u8], usize, &str, &[u8], usize, &mut [u8], usize),
}

fn ssl_calc_finished_tls(ssl: &mut MbedtlsSslContext, buf: &mut [u8], from: i32) {
    let len = 12;
    let sender = if from == 0 {
        "client finished"
    } else {
        "server finished"
    };

    let mut md5 = Md5::new();
    let mut sha1 = Sha1::new();
    let mut padbuf = [0u8; 36];

    let session = ssl.session_negotiate.as_ref().or(ssl.session.as_ref()).expect("Session is None");

    println!("=> calc  finished tls");

    md5.clone_from(&ssl.handshake.as_ref().unwrap().fin_md5);
    sha1.clone_from(&ssl.handshake.as_ref().unwrap().fin_sha1);

    println!("finished  md5 state: {:?}", md5.finalize_reset());
    println!("finished sha1 state: {:?}", sha1.finalize_reset());

    md5.finalize_into_reset(&mut padbuf[..16]);
    sha1.finalize_into_reset(&mut padbuf[16..]);

    (ssl.handshake.as_ref().unwrap().tls_prf)(
        &session.master,
        48,
        sender,
        &padbuf,
        36,
        buf,
        len,
    );

    println!("calc finished result: {:?}", buf);

    padbuf.zeroize();

    println!("<= calc  finished");
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext {
        session_negotiate: Some(MbedtlsSslSession { master: [0; 48] }),
        session: None,
        handshake: Some(MbedtlsSslHandshakeParams {
            fin_md5: Md5::new(),
            fin_sha1: Sha1::new(),
            tls_prf: |_, _, _, _, _, _, _| {},
        }),
    };

    let mut buf = [0u8; 12];
    ssl_calc_finished_tls(&mut ssl_context, &mut buf, 0);
}
