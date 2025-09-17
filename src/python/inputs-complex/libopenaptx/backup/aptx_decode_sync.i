typedef long unsigned int size_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef signed int __int32_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
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
struct aptx_context;
size_t aptx_decode(struct aptx_context *ctx,
                   const unsigned char *input,
                   size_t input_size,
                   unsigned char *output,
                   size_t output_size,
                   size_t *written);
size_t aptx_decode_sync(struct aptx_context *ctx,
                        const unsigned char *input,
                        size_t input_size,
                        unsigned char *output,
                        size_t output_size,
                        size_t *written,
                        int *synced,
                        size_t *dropped);
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
size_t aptx_decode_sync(struct aptx_context *ctx, const unsigned char *input, size_t input_size, unsigned char *output, size_t output_size, size_t *written, int *synced, size_t *dropped)
{
    const size_t sample_size = ctx->hd ? 6 : 4;
    size_t input_size_step;
    size_t processed_step;
    size_t written_step;
    size_t ipos = 0;
    size_t opos = 0;
    size_t i;
    *synced = 0;
    *dropped = 0;
    if (ctx->decode_sync_buffer_len > 0 && sample_size-1 - ctx->decode_sync_buffer_len <= input_size) {
        while (ctx->decode_sync_buffer_len < sample_size-1)
            ctx->decode_sync_buffer[ctx->decode_sync_buffer_len++] = input[ipos++];
    }
    while (ctx->decode_sync_buffer_len == sample_size-1 && ipos < sample_size && ipos < input_size && (opos + 3*NB_CHANNELS*4 <= output_size || ctx->decode_skip_leading > 0 || ctx->decode_dropped > 0)) {
        ctx->decode_sync_buffer[sample_size-1] = input[ipos++];
        processed_step = aptx_decode(ctx, ctx->decode_sync_buffer, sample_size, output + opos, output_size - opos, &written_step);
        opos += written_step;
        if (ctx->decode_dropped > 0 && processed_step == sample_size) {
            ctx->decode_dropped += processed_step;
            ctx->decode_sync_packets++;
            if (ctx->decode_sync_packets >= (90 +3)/4) {
                *dropped += ctx->decode_dropped;
                ctx->decode_dropped = 0;
                ctx->decode_sync_packets = 0;
            }
        }
        if (processed_step < sample_size) {
            aptx_reset_decode_sync(ctx);
            *synced = 0;
            ctx->decode_dropped++;
            ctx->decode_sync_packets = 0;
            for (i = 0; i < sample_size-1; i++)
                ctx->decode_sync_buffer[i] = ctx->decode_sync_buffer[i+1];
        } else {
            if (ctx->decode_dropped == 0)
                *synced = 1;
            ctx->decode_sync_buffer_len = 0;
        }
    }
    if (ctx->decode_sync_buffer_len == sample_size-1 && ipos == sample_size) {
        ipos = 0;
        ctx->decode_sync_buffer_len = 0;
    }
    while (ipos + sample_size <= input_size && (opos + 3*NB_CHANNELS*4 <= output_size || ctx->decode_skip_leading > 0 || ctx->decode_dropped > 0)) {
        input_size_step = (((output_size - opos) / 3*NB_CHANNELS*4) + ctx->decode_skip_leading) * sample_size;
        if (input_size_step > ((input_size - ipos) / sample_size) * sample_size)
            input_size_step = ((input_size - ipos) / sample_size) * sample_size;
        if (input_size_step > ((90 +3)/4 - ctx->decode_sync_packets) * sample_size && ctx->decode_dropped > 0)
            input_size_step = ((90 +3)/4 - ctx->decode_sync_packets) * sample_size;
        processed_step = aptx_decode(ctx, input + ipos, input_size_step, output + opos, output_size - opos, &written_step);
        ipos += processed_step;
        opos += written_step;
        if (ctx->decode_dropped > 0 && processed_step / sample_size > 0) {
            ctx->decode_dropped += processed_step;
            ctx->decode_sync_packets += processed_step / sample_size;
            if (ctx->decode_sync_packets >= (90 +3)/4) {
                *dropped += ctx->decode_dropped;
                ctx->decode_dropped = 0;
                ctx->decode_sync_packets = 0;
            }
        }
        if (processed_step < input_size_step) {
            aptx_reset_decode_sync(ctx);
            *synced = 0;
            ipos++;
            ctx->decode_dropped++;
            ctx->decode_sync_packets = 0;
        } else if (ctx->decode_dropped == 0) {
            *synced = 1;
        }
    }
    if (ipos + sample_size > input_size) {
        while (ipos < input_size)
            ctx->decode_sync_buffer[ctx->decode_sync_buffer_len++] = input[ipos++];
    }
    *written = opos;
    return ipos;
}
