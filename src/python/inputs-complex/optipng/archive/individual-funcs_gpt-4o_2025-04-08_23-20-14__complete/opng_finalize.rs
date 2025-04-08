use std::sync::Mutex;
use std::fmt::Write;

lazy_static::lazy_static! {
    static ref OPTIONS: Mutex<OpngOptions> = Mutex::new(OpngOptions::default());
    static ref SUMMARY: Mutex<OpngSummary> = Mutex::new(OpngSummary::default());
    static ref ENGINE: Mutex<OpngEngine> = Mutex::new(OpngEngine { started: false });
}

struct OpngOptions {
    verbose: bool,
}

impl Default for OpngOptions {
    fn default() -> Self {
        OpngOptions { verbose: false }
    }
}

struct OpngSummary {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

impl Default for OpngSummary {
    fn default() -> Self {
        OpngSummary {
            file_count: 0,
            err_count: 0,
            fix_count: 0,
            snip_count: 0,
        }
    }
}

struct OpngEngine {
    started: bool,
}

fn usr_printf(fmt: &str, args: std::fmt::Arguments) {
    let mut output = String::new();
    write!(&mut output, fmt, args).unwrap();
    println!("{}", output);
}

fn opng_finalize() -> i32 {
    let options = OPTIONS.lock().unwrap();
    let summary = SUMMARY.lock().unwrap();
    let mut engine = ENGINE.lock().unwrap();

    if options.verbose || summary.snip_count > 0 || summary.err_count > 0 {
        usr_printf("** Status report\n", std::format_args!());
        usr_printf(
            "{} file(s) have been processed.\n",
            std::format_args!("{}", summary.file_count),
        );
        if summary.snip_count > 0 {
            usr_printf(
                "{} multi-image file(s) have been snipped.\n",
                std::format_args!("{}", summary.snip_count),
            );
        }
        if summary.err_count > 0 {
            usr_printf(
                "{} error(s) have been encountered.\n",
                std::format_args!("{}", summary.err_count),
            );
            if summary.fix_count > 0 {
                usr_printf(
                    "{} erroneous file(s) have been fixed.\n",
                    std::format_args!("{}", summary.fix_count),
                );
            }
        }
    }
    engine.started = false;
    0
}
