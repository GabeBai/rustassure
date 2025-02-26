use std::os::raw::{c_char, c_int};
use std::io::{Write, Result};

static mut CON_FILE: Option<std::fs::File> = None;
static mut LOG_FILE: Option<std::fs::File> = None;
static mut START_OF_LINE: bool = false;

fn app_print_cntrl(cntrl_code: c_int) {
    let (con_str, log_str): (&str, &str);
    let mut i: c_int;

    unsafe {
        if cntrl_code == b'\r' as c_int {
            con_str = "\r";
            log_str = "\n";
            START_OF_LINE = true;
        } else if cntrl_code == b'\v' as c_int {
            if !START_OF_LINE {
                con_str = log_str = "\n";
                START_OF_LINE = true;
            } else {
                con_str = log_str = "";
            }
        } else if cntrl_code < 0 && cntrl_code > -80 && START_OF_LINE {
            if let Some(con_file) = &mut CON_FILE {
                for i in (cntrl_code..0).rev() {
                    con_file.write_all(b" ").unwrap();
                }
            }
            con_str = "\r";
            log_str = "";
        } else {
            con_str = log_str = "<?>";
        }

        if let Some(con_file) = &CON_FILE {
            con_file.write_all(con_str.as_bytes()).unwrap();
        }
        if let Some(log_file) = &LOG_FILE {
            log_file.write_all(log_str.as_bytes()).unwrap();
        }
    }
}
