                             "invalid status code"};

int
csv_error(const struct csv_parser *p)
{
  assert(p && "received null csv_parser");

  /* Return the current status of the parser */
  return p->status;
}