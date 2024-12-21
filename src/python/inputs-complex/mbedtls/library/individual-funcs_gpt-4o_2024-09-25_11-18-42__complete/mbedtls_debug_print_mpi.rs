use std::fmt::Write;

struct MbedtlsSslContext<'a> {
    conf: Option<&'a MbedtlsSslConfig<'a>>,
}

struct MbedtlsSslConfig<'a> {
    f_dbg: Option<fn(&'a MbedtlsSslContext, i32, &str, i32, &str)>,
}

struct MbedtlsMpi {
    s: i32,
    n: usize,
    p: Vec<u64>,
}

static DEBUG_THRESHOLD: i32 = 0;

fn debug_send_line(ssl: &MbedtlsSslContext, level: i32, file: &str, line: i32, text: &str) {
    if let Some(conf) = ssl.conf {
        if let Some(f_dbg) = conf.f_dbg {
            f_dbg(ssl, level, file, line, text);
        }
    }
}

fn mbedtls_debug_print_mpi(ssl: &MbedtlsSslContext, level: i32, file: &str, line: i32, text: &str, x: &MbedtlsMpi) {
    let mut str_buf = String::with_capacity(512);
    let mut j;
    let mut k;
    let mut zeros = true;
    let mut idx = 0;

    if ssl.conf.is_none() || ssl.conf.unwrap().f_dbg.is_none() || level > DEBUG_THRESHOLD {
        return;
    }

    let mut n = x.n - 1;
    while n > 0 && x.p[n] == 0 {
        n -= 1;
    }

    j = (std::mem::size_of::<u64>() * 8) as i32 - 1;
    while j >= 0 && (x.p[n] >> j) & 1 == 0 {
        j -= 1;
    }

    write!(str_buf, "value of '{}' ({} bits) is:\n", text, (n * (std::mem::size_of::<u64>() * 8) + j as usize + 1)).unwrap();
    debug_send_line(ssl, level, file, line, &str_buf);
    str_buf.clear();

    for i in (0..=n).rev() {
        if zeros && x.p[i] == 0 {
            continue;
        }
        for k in (0..std::mem::size_of::<u64>()).rev() {
            if zeros && ((x.p[i] >> (k * 8)) & 0xFF) == 0 {
                continue;
            } else {
                zeros = false;
            }
            if idx % 16 == 0 {
                if idx > 0 {
                    write!(str_buf, "\n").unwrap();
                    debug_send_line(ssl, level, file, line, &str_buf);
                    str_buf.clear();
                }
            }
            write!(str_buf, " {:02x}", (x.p[i] >> (k * 8)) & 0xFF).unwrap();
            idx += 1;
        }
    }

    if zeros {
        write!(str_buf, " 00").unwrap();
    }
    write!(str_buf, "\n").unwrap();
    debug_send_line(ssl, level, file, line, &str_buf);
}

fn main() {
    // Example usage
    let mpi = MbedtlsMpi {
        s: 1,
        n: 3,
        p: vec![0, 0, 1],
    };

    let ssl_config = MbedtlsSslConfig { f_dbg: Some(debug_callback) };
    let ssl_context = MbedtlsSslContext { conf: Some(&ssl_config) };

    mbedtls_debug_print_mpi(&ssl_context, 1, "file.rs", 42, "test", &mpi);
}

fn debug_callback(_ssl: &MbedtlsSslContext, _level: i32, _file: &str, _line: i32, text: &str) {
    println!("{}", text);
}
