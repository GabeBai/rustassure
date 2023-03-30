
int
csv_set_opts(struct csv_parser *p, unsigned char options)
{
  /* Set the options */
  if (p == NULL)
    return -1;

  p->options = options;
  return 0;
}