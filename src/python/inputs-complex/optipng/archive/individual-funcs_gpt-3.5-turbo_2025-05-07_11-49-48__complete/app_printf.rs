use std::ffi::CString;
use std::io::Write;

static mut CON_FILE: Option<std::fs::File> = None;
static mut LOG_FILE: Option<std::fs::File> = None;
static mut START_OF_LINE: bool = false;

fn app_printf(fmt: &str, args: std::fmt::Arguments) {
    unsafe {
        if fmt.is_empty() {
            return;
        }

        START_OF_LINE = fmt.chars().last() == Some('\n');

        if let Some(con_file) = &mut CON_FILE {
            con_file.write_fmt(args).unwrap();
        }

        if let Some(log_file) = &mut LOG_FILE {
            log_file.write_fmt(args).unwrap();
        }
    }
}

fn main() {
    unsafe {
        CON_FILE = Some(std::fs::File::create("console.log").unwrap());
        LOG_FILE = Some(std::fs::File::create("app.log").unwrap());

        let fmt = "Hello, {}!\n";
        let name = "Alice";

        app_printf(fmt, format_args!("{}", name));
    }
}
