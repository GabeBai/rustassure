fn aptx_decode_sync(
    ctx: &mut AptxContext,
    input: &[u8],
    output: &mut [u8],
    synced: &mut i32,
    dropped: &mut usize,
) -> usize {
    let sample_size = if ctx.hd { 6 } else { 4 };
    let mut ipos = 0;
    let mut opos = 0;
    *synced = 0;
    *dropped = 0;

    if ctx.decode_sync_buffer_len > 0 && sample_size - 1 - ctx.decode_sync_buffer_len <= input.len() {
        while ctx.decode_sync_buffer_len < sample_size - 1 {
            ctx.decode_sync_buffer[ctx.decode_sync_buffer_len] = input[ipos];
            ctx.decode_sync_buffer_len += 1;
            ipos += 1;
        }
    }

    while ctx.decode_sync_buffer_len == sample_size - 1
        && ipos < sample_size
        && ipos < input.len()
        && (opos + 3 * NB_CHANNELS * 4 <= output.len() || ctx.decode_skip_leading > 0 || ctx.decode_dropped > 0)
    {
        ctx.decode_sync_buffer[sample_size - 1] = input[ipos];
        ipos += 1;

        // Mutable borrow of ctx starts here
        let processed_step = {
            let buffer = &ctx.decode_sync_buffer;
            aptx_decode(ctx, buffer, sample_size, &mut output[opos..], output.len() - opos, &mut 0)
        };
        // Mutable borrow of ctx ends here

        opos += processed_step;

        if ctx.decode_dropped > 0 && processed_step == sample_size {
            ctx.decode_dropped += processed_step;
            ctx.decode_sync_packets += 1;
            if ctx.decode_sync_packets >= (90 + 3) / 4 {
                *dropped += ctx.decode_dropped;
                ctx.decode_dropped = 0;
                ctx.decode_sync_packets = 0;
            }
        }

        if processed_step < sample_size {
            aptx_reset_decode_sync(ctx);
            *synced = 0;
            ctx.decode_dropped += 1;
            ctx.decode_sync_packets = 0;
            for i in 0..sample_size - 1 {
                ctx.decode_sync_buffer[i] = ctx.decode_sync_buffer[i + 1];
            }
        } else {
            if ctx.decode_dropped == 0 {
                *synced = 1;
            }
            ctx.decode_sync_buffer_len = 0;
        }
    }

    if ctx.decode_sync_buffer_len == sample_size - 1 && ipos == sample_size {
        ipos = 0;
        ctx.decode_sync_buffer_len = 0;
    }

    while ipos + sample_size <= input.len()
        && (opos + 3 * NB_CHANNELS * 4 <= output.len() || ctx.decode_skip_leading > 0 || ctx.decode_dropped > 0)
    {
        let input_size_step = (((output.len() - opos) / 3 * NB_CHANNELS * 4) + ctx.decode_skip_leading) * sample_size;
        let input_size_step = input_size_step.min(((input.len() - ipos) / sample_size) * sample_size);
        let input_size_step = input_size_step.min(((90 + 3) / 4 - ctx.decode_sync_packets) * sample_size);

        let processed_step = aptx_decode(ctx, &input[ipos..], input_size_step, &mut output[opos..], output.len() - opos, &mut 0);
        ipos += processed_step;
        opos += processed_step;

        if ctx.decode_dropped > 0 && processed_step / sample_size > 0 {
            ctx.decode_dropped += processed_step;
            ctx.decode_sync_packets += processed_step / sample_size;
            if ctx.decode_sync_packets >= (90 + 3) / 4 {
                *dropped += ctx.decode_dropped;
                ctx.decode_dropped = 0;
                ctx.decode_sync_packets = 0;
            }
        }

        if processed_step < input_size_step {
            aptx_reset_decode_sync(ctx);
            *synced = 0;
            ipos += 1;
            ctx.decode_dropped += 1;
            ctx.decode_sync_packets = 0;
        } else if ctx.decode_dropped == 0 {
            *synced = 1;
        }
    }

    if ipos + sample_size > input.len() {
        while ipos < input.len() {
            ctx.decode_sync_buffer[ctx.decode_sync_buffer_len] = input[ipos];
            ctx.decode_sync_buffer_len += 1;
            ipos += 1;
        }
    }

    opos
}
