
int
csv_get_opts(const struct csv_parser *p)
{
  /* Return the currently set options of parser */
  if (p == NULL)
    return -1;

  return p->options;
}