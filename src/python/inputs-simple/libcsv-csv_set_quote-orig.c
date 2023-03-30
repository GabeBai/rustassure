
void
csv_set_quote(struct csv_parser *p, unsigned char c)
{
  /* Set the quote character */
  if (p) p->quote_char = c;
}