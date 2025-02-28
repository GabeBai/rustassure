use std::mem;

#[repr(C, packed)]
struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(C, packed)]
struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(C, packed)]
struct _OSUnalignedU64 {
    __val: u64,
}

#[repr(C)]
union wait {
    w_status: i32,
    w_T: WaitT,
    w_S: WaitS,
}

#[repr(C)]
struct WaitT {
    w_Termsig: u32,
    w_Coredump: u32,
    w_Retcode: u32,
    w_Filler: u32,
}

#[repr(C)]
struct WaitS {
    w_Stopval: u32,
    w_Stopsig: u32,
    w_Filler: u32,
}

#[derive(Debug)]
enum BmpError {
    BmpFileNotOpened = -4,
    BmpHeaderNotInitialized,
    BmpInvalidFile,
    BmpError,
    BmpOk = 0,
}

#[derive(Debug)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

impl BmpPixel {
    fn init(&mut self, red: u8, green: u8, blue: u8) {
        self.red = red;
        self.green = green;
        self.blue = blue;
    }
}

fn main() {
    let mut pixel = BmpPixel { blue: 0, green: 0, red: 0 };
    pixel.init(255, 128, 64);
    println!("{:?}", pixel);
}
