use std::io::{Write, stdout};

static mut CON_FILE: Option<Box<dyn Write>> = None;
static mut LOG_FILE: Option<Box<dyn Write>> = None;
static mut START_OF_LINE: bool = true;

fn app_print_cntrl(cntrl_code: i32) {
    let (con_str, log_str): (&str, &str);
    
    unsafe {
        match cntrl_code {
            b'\r' as i32 => {
                con_str = "\r";
                log_str = "\n";
                START_OF_LINE = true;
            },
            b'\v' as i32 => {
                if !START_OF_LINE {
                    con_str = "\n";
                    log_str = "\n";
                    START_OF_LINE = true;
                } else {
                    con_str = "";
                    log_str = "";
                }
            },
            -79..=0 if START_OF_LINE => {
                if let Some(ref mut con_file) = CON_FILE {
                    for _ in cntrl_code..0 {
                        write!(con_file, " ").unwrap();
                    }
                }
                con_str = "\r";
                log_str = "";
            },
            _ => {
                con_str = "<?>";
                log_str = "<?>";
            }
        }

        if let Some(ref mut con_file) = CON_FILE {
            write!(con_file, "{}", con_str).unwrap();
        }
        if let Some(ref mut log_file) = LOG_FILE {
            write!(log_file, "{}", log_str).unwrap();
        }
    }
}