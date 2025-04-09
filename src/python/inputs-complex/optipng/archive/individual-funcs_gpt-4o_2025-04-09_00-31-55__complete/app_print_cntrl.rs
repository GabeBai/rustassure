use std::io::{self, Write};
use std::fs::File;
use std::ptr;

struct AppState {
    con_file: Option<File>,
    log_file: Option<File>,
    start_of_line: bool,
}

impl AppState {
    fn app_print_cntrl(&mut self, cntrl_code: i32) {
        let (con_str, log_str);
        if cntrl_code == '\r' as i32 {
            con_str = "\r";
            log_str = "\n";
            self.start_of_line = true;
        } else if cntrl_code == '\x0B' as i32 { // Use \x0B for vertical tab
            if !self.start_of_line {
                con_str = "\n";
                log_str = "\n";
                self.start_of_line = true;
            } else {
                con_str = "";
                log_str = "";
            }
        } else if cntrl_code < 0 && cntrl_code > -80 && self.start_of_line {
            if let Some(ref mut con_file) = self.con_file {
                for _ in cntrl_code..0 {
                    write!(con_file, " ").unwrap();
                }
            }
            con_str = "\r";
            log_str = "";
        } else {
            con_str = "<?>";
            log_str = "<?>";
        }

        if let Some(ref mut con_file) = self.con_file {
            write!(con_file, "{}", con_str).unwrap();
        }
        if let Some(ref mut log_file) = self.log_file {
            write!(log_file, "{}", log_str).unwrap();
        }
    }
}

fn main() {
    // Example usage
    let mut app_state = AppState {
        con_file: None, // Replace with Some(File::create("con_file.txt").unwrap()) if needed
        log_file: None, // Replace with Some(File::create("log_file.txt").unwrap()) if needed
        start_of_line: false,
    };

    app_state.app_print_cntrl('\x0B' as i32); // Example call with vertical tab
}
