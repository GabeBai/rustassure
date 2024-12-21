use std::fs::File;
use std::io::{self, Read};
use std::cell::RefCell;
use std::rc::Rc;

struct MyFile {
    file: Rc<RefCell<File>>,
    buffer: Vec<u8>,
    read_ptr: usize,
    read_end: usize,
}

impl MyFile {
    fn new(file: File) -> MyFile {
        MyFile {
            file: Rc::new(RefCell::new(file)),
            buffer: Vec::new(),
            read_ptr: 0,
            read_end: 0,
        }
    }

    fn fgetc_unlocked(&mut self) -> io::Result<Option<u8>> {
        if self.read_ptr >= self.read_end {
            self.__uflow()
        } else {
            let byte = self.buffer[self.read_ptr];
            self.read_ptr += 1;
            Ok(Some(byte))
        }
    }

    fn __uflow(&mut self) -> io::Result<Option<u8>> {
        let mut file = self.file.borrow_mut();
        self.buffer.clear();
        let mut buf = [0; 1];
        match file.read(&mut buf) {
            Ok(0) => Ok(None), // EOF
            Ok(_) => {
                self.buffer.push(buf[0]);
                self.read_ptr = 1;
                self.read_end = 1;
                Ok(Some(buf[0]))
            }
            Err(e) => Err(e),
        }
    }
}

fn main() -> io::Result<()> {
    let file = File::open("example.txt")?;
    let mut my_file = MyFile::new(file);

    while let Some(byte) = my_file.fgetc_unlocked()? {
        println!("{}", byte);
    }

    Ok(())
}
