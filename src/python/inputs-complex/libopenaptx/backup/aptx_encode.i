typedef long unsigned int size_t;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
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
typedef __uint32_t uint32_t;
struct aptx_context;
size_t aptx_encode(struct aptx_context *ctx,
                   const unsigned char *input,
                   size_t input_size,
                   unsigned char *output,
                   size_t output_size,
                   size_t *written);
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
struct aptx_context {
    size_t decode_sync_packets;
    size_t decode_dropped;
    struct aptx_channel channels[NB_CHANNELS];
    uint8_t hd;
    uint8_t sync_idx;
    uint8_t encode_remaining;
    uint8_t decode_skip_leading;
    uint8_t decode_sync_buffer_len;
    unsigned char decode_sync_buffer[6];
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
size_t aptx_encode(struct aptx_context *ctx, const unsigned char *input, size_t input_size, unsigned char *output, size_t output_size, size_t *written)
{
    const size_t sample_size = ctx->hd ? 6 : 4;
    int32_t samples[NB_CHANNELS][4];
    unsigned sample, channel;
    size_t ipos, opos;
    for (ipos = 0, opos = 0; ipos + 3*NB_CHANNELS*4 <= input_size && opos + sample_size <= output_size; opos += sample_size) {
        for (sample = 0; sample < 4; sample++) {
            for (channel = 0; channel < NB_CHANNELS; channel++, ipos += 3) {
                samples[channel][sample] = (int32_t)(((uint32_t)input[ipos+0] << 0) |
                                                     ((uint32_t)input[ipos+1] << 8) |
                                                     ((uint32_t)(int8_t)input[ipos+2] << 16));
            }
        }
        aptx_encode_samples(ctx, samples, output + opos);
    }
    *written = opos;
    return ipos;
}
