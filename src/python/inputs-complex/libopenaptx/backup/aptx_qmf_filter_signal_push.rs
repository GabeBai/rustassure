type Int16 = i16;
type Int32 = i32;
type Uint8 = u8;

struct AptxFilterSignal {
    buffer: [Int32; 2 * 16],
    pos: Uint8,
}

fn aptx_qmf_filter_signal_push(signal: &mut AptxFilterSignal, sample: Int32) {
    signal.buffer[signal.pos as usize] = sample;
    signal.buffer[(signal.pos as usize) + 16] = sample;
    signal.pos = (signal.pos + 1) & (16 - 1);
}
