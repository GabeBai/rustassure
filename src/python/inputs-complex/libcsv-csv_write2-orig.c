  unsigned char *cdest = dest;
  const unsigned char *csrc = src;
  size_t chars = 0;

  if (src == NULL)
    return 0;

  if (dest == NULL)
    dest_size = 0;

  if (dest_size > 0)
    *cdest++ = quote;
  chars++;

  while (src_size) {
    if (*csrc == quote) {
      if (dest_size > chars)
        *cdest++ = quote;
      if (chars < SIZE_MAX) chars++;
    }
    if (dest_size > chars)
      *cdest++ = *csrc;
    if (chars < SIZE_MAX) chars++;
    src_size--;
    csrc++;
  }

  if (dest_size > chars)
    *cdest = quote;
  if (chars < SIZE_MAX) chars++;

  return chars;
}