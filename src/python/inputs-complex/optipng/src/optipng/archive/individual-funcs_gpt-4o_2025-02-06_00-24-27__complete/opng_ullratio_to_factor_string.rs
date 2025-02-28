#![allow(unaligned_references)]
use std::fmt::Write;

type OpngUllongT = u64;

#[repr(C, packed)]struct OpngUllratio {
    num: OpngUllongT,
    denom: OpngUllongT,
}

#[no_mangle]
#[no_mangle]
fn opng_ullratio_to_factor_string(buffer: &mut String, ratio: &OpngUllratio) -> Result<(), std::fmt::Error> {
    let num = ratio.num;
    let denom = ratio.denom;
    opng_sprint_uratio_impl(buffer, num, denom)
}

#[no_mangle]
#[no_mangle]
fn opng_sprint_uratio_impl(buffer: &mut String, num: OpngUllongT, denom: OpngUllongT) -> Result<(), std::fmt::Error> {
    // Assuming the function formats the ratio as "num/denom"
    write!(buffer, "{}/{}", num, denom)
}

#[no_mangle]
#[no_mangle]
fn main() {
    let ratio = OpngUllratio { num: 3, denom: 4 };
    let mut buffer = String::new();
    
    match opng_ullratio_to_factor_string(&mut buffer, &ratio) {
        Ok(_) => println!("Formatted ratio: {}", buffer),
        Err(e) => eprintln!("Error formatting ratio: {}", e),
    }
}
