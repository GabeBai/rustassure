use std::mem::size_of;

#[repr(C)]
struct AptxFilterSignal {
    buffer: [i32; 2 * 16],
    pos: u8,
}

#[repr(C)]
struct AptxQMFAnalysis {
    outer_filter_signal: [AptxFilterSignal; 2],
    inner_filter_signal: [[AptxFilterSignal; 2]; 2],
}

#[repr(C)]
struct AptxQuantize {
    quantized_sample: i32,
    quantized_sample_parity_change: i32,
    error: i32,
}

#[repr(C)]
struct AptxInvertQuantize {
    quantization_factor: i32,
    factor_select: i32,
    reconstructed_difference: i32,
}

#[repr(C)]
struct AptxPrediction {
    prev_sign: [i32; 2],
    s_weight: [i32; 2],
    d_weight: [i32; 24],
    pos: i32,
    reconstructed_differences: [i32; 48],
    previous_reconstructed_sample: i32,
    predicted_difference: i32,
    predicted_sample: i32,
}

#[repr(C)]
struct AptxChannel {
    codeword_history: i32,
    dither_parity: i32,
    dither: [i32; 4],
    qmf: AptxQMFAnalysis,
    quantize: [AptxQuantize; 4],
    invert_quantize: [AptxInvertQuantize; 4],
    prediction: [AptxPrediction; 4],
}

#[repr(C)]
struct AptxContext {
    decode_sync_packets: usize,
    decode_dropped: usize,
    channels: [AptxChannel; NB_CHANNELS as usize],
    hd: u8,
    sync_idx: u8,
    encode_remaining: u8,
    decode_skip_leading: u8,
    decode_sync_buffer_len: u8,
    decode_sync_buffer: [u8; 6],
}

#[repr(C)]
struct AptxTables {
    quantize_intervals: *const i32,
    invert_quantize_dither_factors: *const i32,
    quantize_dither_factors: *const i32,
    quantize_factor_select_offset: *const i16,
    tables_size: i32,
    factor_max: i32,
    prediction_order: i32,
}

#[repr(C)]
enum Channels {
    LEFT,
    RIGHT,
    NB_CHANNELS,
}

const NB_CHANNELS: usize = Channels::NB_CHANNELS as usize;

fn aptx_reset(ctx: &mut AptxContext) {
    let hd = ctx.hd;
    for i in 0..size_of::<AptxContext>() {
        unsafe {
            *((ctx as *mut AptxContext as *mut u8).add(i)) = 0;
        }
    }
    ctx.hd = hd;
    ctx.decode_skip_leading = (90 + 3) / 4;
    ctx.encode_remaining = (90 + 3) / 4;
    for chan in 0..NB_CHANNELS {
        let channel = &mut ctx.channels[chan];
        for subband in 0..4 {
            let prediction = &mut channel.prediction[subband];
            prediction.prev_sign[0] = 1;
            prediction.prev_sign[1] = 1;
        }
    }
}
