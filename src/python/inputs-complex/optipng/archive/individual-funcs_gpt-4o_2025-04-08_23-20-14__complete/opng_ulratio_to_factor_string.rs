use std::ffi::CString;
use std::os::raw::c_char;

type OpngUllongT = u64;

#[repr(C)]
struct OpngUlratio {
    num: OpngUllongT,
    denom: OpngUllongT,
}

extern "C" {
    fn opng_sprint_uratio_impl(
        buffer: *mut c_char,
        buffer_size: usize,
        num: OpngUllongT,
        denom: OpngUllongT,
        flag: i32,
    ) -> i32;
}

fn opng_ulratio_to_factor_string(
    buffer: &mut [u8],
    ratio: &OpngUlratio,
) -> i32 {
    let num = ratio.num;
    let denom = ratio.denom;
    unsafe {
        opng_sprint_uratio_impl(
            buffer.as_mut_ptr() as *mut c_char,
            buffer.len(),
            num,
            denom,
            0,
        )
    }
}

fn main() {
    let ratio = OpngUlratio { num: 3, denom: 4 };
    let mut buffer = vec![0u8; 100];
    let result = opng_ulratio_to_factor_string(&mut buffer, &ratio);
    println!("Result: {}", result);
    let c_str = unsafe { CString::from_vec_unchecked(buffer) };
    println!("Buffer: {:?}", c_str);
}
