
void
csv_set_delim(struct csv_parser *p, unsigned char c)
{
  /* Set the delimiter */
  if (p) p->delim_char = c;
}