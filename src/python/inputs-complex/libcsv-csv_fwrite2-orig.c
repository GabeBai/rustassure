int
csv_fwrite2 (FILE *fp, const void *src, size_t src_size, unsigned char quote)
{
  const unsigned char *csrc = src;

  if (fp == NULL || src == NULL)
    return 0;

  if (fputc(quote, fp) == EOF)
    return EOF;

  while (src_size) {
    if (*csrc == quote) {
      if (fputc(quote, fp) == EOF)
        return EOF;
    }
    if (fputc(*csrc, fp) == EOF)
      return EOF;
    src_size--;
    csrc++;
  }

  if (fputc(quote, fp) == EOF) {
    return EOF;
  }

  return 0;
}