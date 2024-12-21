use std::time::SystemTime;

type MbedtlsTimeT = SystemTime;

#[derive(Debug)]
struct MbedtlsSslSession {
    start: MbedtlsTimeT,
    ciphersuite: i32,
    compression: i32,
    id_len: usize,
    id: [u8; 32],
    master: [u8; 48],
    peer_cert: Option<MbedtlsX509Crt>,
    verify_result: u32,
    ticket: Option<Vec<u8>>,
    ticket_len: usize,
    ticket_lifetime: u32,
    mfl_code: u8,
    trunc_hmac: i32,
    encrypt_then_mac: i32,
}

#[derive(Debug)]
struct MbedtlsX509Buf {
    tag: i32,
    len: usize,
    p: Vec<u8>,
}

#[derive(Debug)]
struct MbedtlsX509Crt {
    own_buffer: i32,
    raw: MbedtlsX509Buf,
    tbs: MbedtlsX509Buf,
    version: i32,
    serial: MbedtlsX509Buf,
    sig_oid: MbedtlsX509Buf,
    issuer_raw: MbedtlsX509Buf,
    subject_raw: MbedtlsX509Buf,
    issuer: MbedtlsX509Name,
    subject: MbedtlsX509Name,
    valid_from: MbedtlsX509Time,
    valid_to: MbedtlsX509Time,
    pk_raw: MbedtlsX509Buf,
    pk: MbedtlsPkContext,
    issuer_id: MbedtlsX509Buf,
    subject_id: MbedtlsX509Buf,
    v3_ext: MbedtlsX509Buf,
    subject_alt_names: MbedtlsX509Sequence,
    certificate_policies: MbedtlsX509Sequence,
    ext_types: i32,
    ca_istrue: i32,
    max_pathlen: i32,
    key_usage: u32,
    ext_key_usage: MbedtlsX509Sequence,
    ns_cert_type: u8,
    sig: MbedtlsX509Buf,
    sig_md: MbedtlsMdTypeT,
    sig_pk: MbedtlsPkTypeT,
    sig_opts: Option<Box<dyn std::any::Any>>,
    next: Option<Box<MbedtlsX509Crt>>,
}

#[derive(Debug)]
struct MbedtlsX509Name {
    oid: MbedtlsX509Buf,
    val: MbedtlsX509Buf,
    next: Option<Box<MbedtlsX509Name>>,
    next_merged: u8,
}

#[derive(Debug)]
struct MbedtlsX509Time {
    year: i32,
    mon: i32,
    day: i32,
    hour: i32,
    min: i32,
    sec: i32,
}

#[derive(Debug)]
struct MbedtlsX509Sequence {
    buf: MbedtlsX509Buf,
    next: Option<Box<MbedtlsX509Sequence>>,
}

#[derive(Debug)]
struct MbedtlsPkContext {
    pk_info: Option<Box<MbedtlsPkInfoT>>,
    pk_ctx: Option<Box<dyn std::any::Any>>,
}

#[derive(Debug)]
struct MbedtlsPkInfoT;

#[derive(Debug)]
enum MbedtlsMdTypeT {
    None,
    Md2,
    Md4,
    Md5,
    Sha1,
    Sha224,
    Sha256,
    Sha384,
    Sha512,
    Ripemd160,
}

#[derive(Debug)]
enum MbedtlsPkTypeT {
    None,
    Rsa,
    Ecdsa,
    Ecdh,
    EcdhRsa,
    EcdhEcdsa,
    RsaAlt,
    RsassaPss,
    Opaque,
}
