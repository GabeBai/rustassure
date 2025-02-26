use std::io::{self, Write};

static mut CON_FILE: Option<&mut dyn Write> = None;
static mut LOG_FILE: Option<&mut dyn Write> = None;
static mut START_OF_LINE: bool = false;

fn app_printf(fmt: &str, args: std::fmt::Arguments) {
    if fmt.is_empty() {
        return;
    }

    unsafe {
        START_OF_LINE = fmt.chars().last() == Some('\n');

        if let Some(con_file) = CON_FILE.as_mut() {
            con_file.write_fmt(args).unwrap();
        }

        if let Some(log_file) = LOG_FILE.as_mut() {
            log_file.write_fmt(args).unwrap();
        }
    }
}
