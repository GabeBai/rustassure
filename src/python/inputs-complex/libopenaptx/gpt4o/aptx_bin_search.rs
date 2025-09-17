type Int16 = i16;
type Int32 = i32;
type Int64 = i64;
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
    tables_size: i32,
    factor_max: Int32,
    prediction_order: i32,
}

fn aptx_bin_search(value: Int32, factor: Int32, intervals: *const Int32, nb_intervals: i32) -> Int32 {
    let mut idx = 0;
    let mut i = nb_intervals >> 1;
    while i > 0 {
        if (factor as i64 * unsafe { *intervals.offset((idx + i) as isize) } as i64) <= ((value as i64) << 24) {
            idx += i;
        }
        i >>= 1;
    }
    idx
}
