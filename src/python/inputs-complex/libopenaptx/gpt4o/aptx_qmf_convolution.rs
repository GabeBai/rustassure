type Int16 = i16;
type Int32 = i32;
type Int64 = i64;
type Uint8 = u8;

struct AptxFilterSignal {
    buffer: [Int32; 2 * 16],
    pos: Uint8,
}

fn aptx_qmf_convolution(signal: &AptxFilterSignal, coeffs: &[Int32; 16], shift: u32) -> Int32 {
    let sig = &signal.buffer[signal.pos as usize..];
    let mut e: Int64 = 0;
    for i in 0..16 {
        e += sig[i] as Int64 * coeffs[i] as Int64;
    }
    rshift64_clip24(e, shift)
}

fn rshift64_clip24(value: Int64, shift: u32) -> Int32 {
    let shifted = value >> shift;
    if shifted > i32::MAX as Int64 {
        i32::MAX
    } else if shifted < i32::MIN as Int64 {
        i32::MIN
    } else {
        shifted as Int32
    }
}
