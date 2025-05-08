struct CsvParser {
    // Other fields...
    free_func: Option<Box<dyn Fn(*mut std::ffi::c_void)>>,
}

impl CsvParser {
    fn set_free_func(&mut self, f: Option<Box<dyn Fn(*mut std::ffi::c_void)>>) {
        if f.is_some() {
            self.free_func = f;
        }
    }
}

fn my_free_func(ptr: *mut std::ffi::c_void) {
    // Freeing logic here...
}

fn main() {
    let mut parser = CsvParser {
        // Initialize other fields...
        free_func: None,
    };

    // Set the free function
    parser.set_free_func(Some(Box::new(my_free_func)));
}
