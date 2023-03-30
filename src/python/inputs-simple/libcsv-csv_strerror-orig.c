
const char *
csv_strerror(int status)
{
  /* Return a textual description of status */
  if (status >= CSV_EINVALID || status < 0)
    return csv_errors[CSV_EINVALID];
  else
    return csv_errors[status];
}