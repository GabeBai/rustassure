type Int16 = i16;
type Int32 = i32;
type Uint8 = u8;

struct AptxFilterSignal {
    buffer: [Int32; 2 * 16],
    pos: Uint8,
}

struct AptxQMFAnalysis {
    outer_filter_signal: [AptxFilterSignal; 2],
    inner_filter_signal: [[AptxFilterSignal; 2]; 2],
}

struct AptxQuantize {
    quantized_sample: Int32,
    quantized_sample_parity_change: Int32,
    error: Int32,
}

struct AptxInvertQuantize {
    quantization_factor: Int32,
    factor_select: Int32,
    reconstructed_difference: Int32,
}

struct AptxPrediction {
    prev_sign: [Int32; 2],
    s_weight: [Int32; 2],
    d_weight: [Int32; 24],
    pos: Int32,
    reconstructed_differences: [Int32; 48],
    previous_reconstructed_sample: Int32,
    predicted_difference: Int32,
    predicted_sample: Int32,
}

struct AptxChannel {
    codeword_history: Int32,
    dither_parity: Int32,
    dither: [Int32; 4],
    qmf: AptxQMFAnalysis,
    quantize: [AptxQuantize; 4],
    invert_quantize: [AptxInvertQuantize; 4],
    prediction: [AptxPrediction; 4],
}

struct AptxTables {
    quantize_intervals: *const Int32,
    invert_quantize_dither_factors: *const Int32,
    quantize_dither_factors: *const Int32,
    quantize_factor_select_offset: *const Int16,
    tables_size: Int32,
    factor_max: Int32,
    prediction_order: Int32,
}

fn aptx_reconstructed_differences_update(
    prediction: &mut AptxPrediction,
    reconstructed_difference: Int32,
    order: Int32,
) -> &mut Int32 {
    let (rd1, rd2) = prediction.reconstructed_differences.split_at_mut(order as usize);
    let p = prediction.pos as usize;
    rd1[p] = rd2[p];
    prediction.pos = (p as Int32 + 1) % order;
    rd2[p] = reconstructed_difference;
    &mut rd2[p]
}
