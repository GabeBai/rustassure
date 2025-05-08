use std::os::raw::{c_int, c_char};
use std::fs::File;
use std::io::{Write, Result};

static mut CON_FILE: Option<File> = None;
static mut LOG_FILE: Option<File> = None;
static mut START_OF_LINE: bool = false;

fn fputc(c: c_int, file: &mut File) -> Result<()> {
    write!(file, "{}", c as u8 as char)
}

fn fputs(s: &str, file: &mut File) -> Result<()> {
    write!(file, "{}", s)
}

fn app_print_cntrl(cntrl_code: c_int) {
    let mut con_str = "";
    let mut log_str = "";
    let mut i: c_int;

    unsafe {
        if cntrl_code == '\r' as c_int {
            con_str = "\r";
            log_str = "\n";
            START_OF_LINE = true;
        } else if cntrl_code == '\x0b' as c_int {
            if !START_OF_LINE {
                con_str = "\n";
                log_str = "\n";
                START_OF_LINE = true;
            } else {
                con_str = "";
                log_str = "";
            }
        } else if cntrl_code < 0 && cntrl_code > -80 && START_OF_LINE {
            if let Some(ref mut con_file) = CON_FILE {
                for i in (cntrl_code..0).rev() {
                    fputc(' ' as c_int, con_file).unwrap();
                }
            }
            con_str = "\r";
            log_str = "";
        } else {
            con_str = "<?>";
            log_str = "<?>";
        }

        if let Some(ref mut con_file) = CON_FILE {
            fputs(con_str, con_file).unwrap();
        }
        if let Some(ref mut log_file) = LOG_FILE {
            fputs(log_str, log_file).unwrap();
        }
    }
}
