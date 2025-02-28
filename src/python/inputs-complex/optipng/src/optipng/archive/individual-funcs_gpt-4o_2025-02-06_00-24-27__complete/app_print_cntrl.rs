#![allow(unaligned_references)]
use std::io::{self, Write};
use std::ptr;

static mut CON_FILE: Option<Box<dyn Write>> = None;
static mut LOG_FILE: Option<Box<dyn Write>> = None;
static mut START_OF_LINE: bool = false;

unsafe fn app_print_cntrl(cntrl_code: i32) {
    let (con_str, log_str);
    if cntrl_code == '\r' as i32 {
        con_str = "\r";
        log_str = "\n";
        START_OF_LINE = true;
    } else if cntrl_code == '\x0b' as i32 {
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
            for _ in 0..-cntrl_code {
                let _ = con_file.write_all(b" ");
            }
        }
        con_str = "\r";
        log_str = "";
    } else {
        con_str = "<?>";
        log_str = "<?>";
    }
    if let Some(ref mut con_file) = CON_FILE {
        let _ = con_file.write_all(con_str.as_bytes());
    }
    if let Some(ref mut log_file) = LOG_FILE {
        let _ = log_file.write_all(log_str.as_bytes());
    }
}
