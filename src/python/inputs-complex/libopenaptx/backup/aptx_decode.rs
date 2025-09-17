use std::convert::TryInto;

const NB_CHANNELS: usize = 2;

struct AptxContext {
    decode_sync_packets: usize,
    decode_dropped: usize,
    channels: [AptxChannel; NB_CHANNELS],
    hd: u8,
    sync_idx: u8,
    encode_remaining: u8,
    decode_skip_leading: u8,
    decode_sync_buffer_len: u8,
    decode_sync_buffer: [u8; 6],
}

struct AptxChannel {
    codeword_history: i32,
    dither_parity: i32,
    dither: [i32; 4],
    qmf: AptxQMFAnalysis,
    quantize: [AptxQuantize; 4],
    invert_quantize: [AptxInvertQuantize; 4],
    prediction: [AptxPrediction; 4],
}

struct AptxQMFAnalysis {
    outer_filter_signal: [AptxFilterSignal; 2],
    inner_filter_signal: [[AptxFilterSignal; 2]; 2],
}

struct AptxFilterSignal {
    buffer: [i32; 2 * 16],
    pos: u8,
}

struct AptxQuantize {
    quantized_sample: i32,
    quantized_sample_parity_change: i32,
    error: i32,
}

struct AptxInvertQuantize {
    quantization_factor: i32,
    factor_select: i32,
    reconstructed_difference: i32,
}

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

fn aptx_decode(
    ctx: &mut AptxContext,
    input: &[u8],
    input_size: usize,
    output: &mut [u8],
    output_size: usize,
    written: &mut usize,
) -> usize {
    let sample_size = if ctx.hd != 0 { 6 } else { 4 };
    let mut samples = [[0i32; 4]; NB_CHANNELS];
    let mut ipos = 0;
    let mut opos = 0;

    while ipos + sample_size <= input_size
        && (opos + 3 * NB_CHANNELS * 4 <= output_size || ctx.decode_skip_leading > 0)
    {
        if aptx_decode_samples(ctx, &input[ipos..], &mut samples) {
            break;
        }
        let mut sample = 0;
        if ctx.decode_skip_leading > 0 {
            ctx.decode_skip_leading -= 1;
            if ctx.decode_skip_leading > 0 {
                continue;
            }
            sample = 90 % 4;
        }
        for sample in sample..4 {
            for channel in 0..NB_CHANNELS {
                let sample_value = samples[channel][sample];
                output[opos] = ((sample_value >> 0) & 0xFF) as u8;
                output[opos + 1] = ((sample_value >> 8) & 0xFF) as u8;
                output[opos + 2] = ((sample_value >> 16) & 0xFF) as u8;
                opos += 3;
            }
        }
        ipos += sample_size;
    }
    *written = opos;
    ipos
}

fn aptx_decode_samples(
    _ctx: &mut AptxContext,
    _input: &[u8],
    _samples: &mut [[i32; 4]; NB_CHANNELS],
) -> bool {
    // Dummy implementation for the purpose of translation
    false
}
