use std::fmt::{self, Write};
use std::io::{self, Write as IoWrite};

fn vprintf(fmt: &str, args: fmt::Arguments) -> io::Result<()> {
    let stdout = io::stdout();
    let mut handle = stdout.lock();
    handle.write_fmt(args)?;
    Ok(())
}

fn main() {
    let args = format_args!("Hello, {}!", "world");
    if let Err(e) = vprintf("{}", args) {
        eprintln!("Error: {}", e);
    }
}
