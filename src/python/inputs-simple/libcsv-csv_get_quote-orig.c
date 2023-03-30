

unsigned char
csv_get_quote(const struct csv_parser *p)
{
  assert(p && "received null csv_parser");

  /* Get the quote character */
  return p->quote_char;
}