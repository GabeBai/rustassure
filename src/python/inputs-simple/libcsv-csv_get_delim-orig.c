

unsigned char
csv_get_delim(const struct csv_parser *p)
{
  assert(p && "received null csv_parser");

  /* Get the delimiter */
  return p->delim_char;
}