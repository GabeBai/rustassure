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
 const int32_t aptx_qmf_outer_coeffs[2][16] = {
    {
        730, -413, -9611, 43626, -121026, 269973, -585547, 2801966,
        697128, -160481, 27611, 8478, -10043, 3511, 688, -897,
    },
    {
        -897, 688, 3511, -10043, 8478, 27611, -160481, 697128,
        2801966, -585547, 269973, -121026, 43626, -9611, -413, 730,
    },
};
 const int32_t aptx_qmf_inner_coeffs[2][16] = {
    {
       1033, -584, -13592, 61697, -171156, 381799, -828088, 3962579,
       985888, -226954, 39048, 11990, -14203, 4966, 973, -1268,
    },
    {
      -1268, 973, 4966, -14203, 11990, 39048, -226954, 985888,
      3962579, -828088, 381799, -171156, 61697, -13592, -584, 1033,
    },
};
 void aptx_qmf_tree_synthesis(struct aptx_QMF_analysis *qmf,
                                    const int32_t subband_samples[4],
                                    int32_t samples[4])
{
    int32_t intermediate_samples[4];
    unsigned i;
    for (i = 0; i < 2; i++)
        aptx_qmf_polyphase_synthesis(qmf->inner_filter_signal[i],
                                     aptx_qmf_inner_coeffs, 22,
                                     subband_samples[2*i+0],
                                     subband_samples[2*i+1],
                                     &intermediate_samples[2*i]);
    for (i = 0; i < 2; i++)
        aptx_qmf_polyphase_synthesis(qmf->outer_filter_signal,
                                     aptx_qmf_outer_coeffs, 21,
                                     intermediate_samples[0+i],
                                     intermediate_samples[2+i],
                                     &samples[2*i]);
}
