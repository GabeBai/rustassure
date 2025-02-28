#[macro_use]
extern crate lazy_static;

use std::sync::Mutex;

struct OpngProcess {
    // Your fields here
}

impl Default for OpngProcess {
    fn default() -> Self {
        // Initialize your OpngProcess here
        OpngProcess {
            // Set default values for fields
        }
    }
}

lazy_static! {
    static ref PROCESS: Mutex<OpngProcess> = Mutex::new(OpngProcess::default());
}

// Now you can use PROCESS.lock() to access the OpngProcess safely
