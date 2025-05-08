use std::io::{self, Write};

struct App {
    con_file: Option<Box<dyn Write>>,
    log_file: Option<Box<dyn Write>>,
    start_of_line: bool,
}

impl App {
    fn app_print_cntrl(&mut self, cntrl_code: i32) {
        let (con_str, log_str);
        let mut i: i32;

        if cntrl_code == '\r' as i32 {
            con_str = "\r";
            log_str = "\n";
            self.start_of_line = true;
        } else if cntrl_code == '\u{000B}' as i32 { // Using Unicode escape for vertical tab
            if !self.start_of_line {
                con_str = log_str = "\n";
                self.start_of_line = true;
            } else {
                con_str = log_str = "";
            }
        } else if cntrl_code < 0 && cntrl_code > -80 && self.start_of_line {
            if let Some(ref mut con_file) = self.con_file {
                for i in (cntrl_code..0).rev() {
                    let _ = con_file.write_all(b" "); // Write spaces
                }
            }
            con_str = "\r";
            log_str = "";
        } else {
            con_str = "<?>";
            log_str = "<?>";
        }

        if let Some(ref mut con_file) = self.con_file {
            let _ = con_file.write_all(con_str.as_bytes());
        }
        if let Some(ref mut log_file) = self.log_file {
            let _ = log_file.write_all(log_str.as_bytes());
        }
    }
}
