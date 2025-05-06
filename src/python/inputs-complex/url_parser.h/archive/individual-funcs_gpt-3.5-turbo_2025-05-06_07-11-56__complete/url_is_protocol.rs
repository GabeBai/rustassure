const URL_SCHEMES: [&str; 144] = [
    "aaa", "aaas", "about", "acap", "acct", "adiumxtra", "afp", "afs", "aim", "apt", "attachment", "aw",
    "beshare", "bitcoin", "bolo", "callto", "cap", "chrome", "crome-extension", "com-evenbrite-attendee",
    "cid", "coap", "coaps", "content", "crid", "cvs", "data", "dav", "dict", "lna-playsingle", "dln-playcontainer",
    "dns", "dtn", "dvb", "ed2k", "facetime", "fax", "feed", "file", "finger", "fish", "ftp", "geo", "gg", "git",
    "gizmoproject", "go", "gopher", "gtalk", "h323", "hcp", "http", "https", "iax", "icap", "icon", "im",
    "imap", "info", "ipn", "ipp", "irc", "irc6", "ircs", "iris", "iris.beep", "iris.xpc", "iris.xpcs", "iris.lws",
    "itms", "jabber", "jar", "jms", "keyparc", "lastfm", "ldap", "ldaps", "magnet", "mailserver", "mailto",
    "maps", "market", "message", "mid", "mms", "modem", "ms-help", "mssettings-power", "msnim", "msrp",
    "msrps", "mtqp", "mumble", "mupdate", "mvn", "news", "nfs", "ni", "nih", "nntp", "notes", "oid",
    "paquelocktoken", "pack", "palm", "paparazzi", "pkcs11", "platform", "pop", "pres", "prospero", "proxy",
    "psyc", "query", "reload", "res", "resource", "rmi", "rsync", "rtmp", "rtsp", "secondlife", "service", "session",
    "sftp", "sgn", "shttp", "sieve", "sip", "sips", "skype", "smb", "sms", "snews", "snmp", "soap.beep", "soap.beeps",
    "soldat", "spotify", "ssh", "steam", "svn", "tag", "teamspeak", "tel", "telnet", "tftp", "things", "thismessage",
    "tn3270", "tip", "tv", "udp", "unreal", "urn", "ut2004", "vemmi", "ventrilo", "videotex", "view-source", "wais", "webcal",
    "ws", "wss", "wtai", "wyciwyg", "xcon", "xcon-userid", "xfire", "xmlrpc.beep", "xmlrpc.beeps", "xmpp", "xri", "ymsgr",
    "javascript", "jdbc", "doi"
];

struct UrlKeyValue {
    key: &'static str,
    value: &'static str,
}

fn url_is_protocol(str: &str) -> bool {
    for scheme in URL_SCHEMES.iter() {
        if scheme == &str {
            return true;
        }
    }
    false
}

fn main() {
    let test_url = "http";
    if url_is_protocol(test_url) {
        println!("{} is a valid protocol", test_url);
    } else {
        println!("{} is not a valid protocol", test_url);
    }
}
