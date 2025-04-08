use std::fs::File;
use std::io::{self, Write};
use std::path::Path;

struct App {
    con_file: Option<File>,
    log_file: Option<File>,
    start_of_line: bool,
}

impl App {
    fn new(con_file_path: Option<&Path>, log_file_path: Option<&Path>) -> io::Result<Self> {
        let con_file = con_file_path.map(File::create).transpose()?;
        let log_file = log_file_path.map(File::create).transpose()?;
        Ok(App {
            con_file,
            log_file,
            start_of_line: true,
        })
    }

    fn app_printf(&mut self, fmt: &str) {
        if fmt.is_empty() {
            return;
        }
        self.start_of_line = fmt.ends_with('\n');

        if let Some(ref mut con_file) = self.con_file {
            writeln!(con_file, "{}", fmt).unwrap();
        }
        if let Some(ref mut log_file) = self.log_file {
            writeln!(log_file, "{}", fmt).unwrap();
        }
    }
}

fn main() -> io::Result<()> {
    let mut app = App::new(Some(Path::new("console_output.txt")), Some(Path::new("log_output.txt")))?;
    app.app_printf("Hello, world!\n");
    Ok(())
}
