typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef signed int __int32_t;
typedef signed long int __int64_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef __uint8_t uint8_t;
struct aptx_context;
enum channels {
    LEFT,
    RIGHT,
    NB_CHANNELS
};
struct aptx_filter_signal {
    int32_t buffer[2*16];
    uint8_t pos;
};
struct aptx_QMF_analysis {
    struct aptx_filter_signal outer_filter_signal[2];
    struct aptx_filter_signal inner_filter_signal[2][2];
};
struct aptx_quantize {
    int32_t quantized_sample;
    int32_t quantized_sample_parity_change;
    int32_t error;
};
struct aptx_invert_quantize {
    int32_t quantization_factor;
    int32_t factor_select;
    int32_t reconstructed_difference;
};
struct aptx_prediction {
    int32_t prev_sign[2];
    int32_t s_weight[2];
    int32_t d_weight[24];
    int32_t pos;
    int32_t reconstructed_differences[48];
    int32_t previous_reconstructed_sample;
    int32_t predicted_difference;
    int32_t predicted_sample;
};
struct aptx_channel {
    int32_t codeword_history;
    int32_t dither_parity;
    int32_t dither[4];
    struct aptx_QMF_analysis qmf;
    struct aptx_quantize quantize[4];
    struct aptx_invert_quantize invert_quantize[4];
    struct aptx_prediction prediction[4];
};
struct aptx_tables {
    const int32_t *quantize_intervals;
    const int32_t *invert_quantize_dither_factors;
    const int32_t *quantize_dither_factors;
    const int16_t *quantize_factor_select_offset;
    int tables_size;
    int32_t factor_max;
    int prediction_order;
};
 void aptx_quantize_difference(struct aptx_quantize *quantize,
                                     int32_t sample_difference,
                                     int32_t dither,
                                     int32_t quantization_factor,
                                     const struct aptx_tables *tables)
{
    const int32_t *intervals = tables->quantize_intervals;
    int32_t quantized_sample, dithered_sample, parity_change;
    int32_t d, mean, interval, inv, sample_difference_abs;
    int64_t error;
    sample_difference_abs = sample_difference;
    if (sample_difference_abs < 0)
        sample_difference_abs = -sample_difference_abs;
    if (sample_difference_abs > ((int32_t)1 << 23) - 1)
        sample_difference_abs = ((int32_t)1 << 23) - 1;
    quantized_sample = aptx_bin_search(sample_difference_abs >> 4,
                                       quantization_factor,
                                       intervals, tables->tables_size);
    d = rshift32_clip24((int32_t)(((int64_t)dither * (int64_t)dither) >> 32), 7) - ((int32_t)1 << 23);
    d = (int32_t)rshift64((int64_t)d * (int64_t)tables->quantize_dither_factors[quantized_sample], 23);
    intervals += quantized_sample;
    mean = (intervals[1] + intervals[0]) / 2;
    interval = (intervals[1] - intervals[0]) * (-(sample_difference < 0) | 1);
    dithered_sample = rshift64_clip24((int64_t)dither * (int64_t)interval + ((int64_t)clip_intp2(mean + d, 23) << 32), 32);
    error = ((int64_t)sample_difference_abs << 20) - (int64_t)dithered_sample * (int64_t)quantization_factor;
    quantize->error = (int32_t)rshift64(error, 23);
    if (quantize->error < 0)
        quantize->error = -quantize->error;
    parity_change = quantized_sample;
    if (error < 0)
        quantized_sample--;
    else
        parity_change--;
    inv = -(sample_difference < 0);
    quantize->quantized_sample = quantized_sample ^ inv;
    quantize->quantized_sample_parity_change = parity_change ^ inv;
}
