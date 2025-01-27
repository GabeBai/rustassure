struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
enum Category
{
  Scheme = 0x01,
  Unreserved = 0x02,
  GenDelim = 0x04,
  SubDelim = 0x08,
  PCharSlash = 0x10,
  HexDigit = 0x20,
  Query = 0x40,
  Fragment = 0x40,
  Userinfo = 0x80,
  IPv6Char = 0x100,
};
const char* const alnum="0123456789"
 "abcdefghijklmnopqrstuvwxyz"
 "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const char* const unreserved = "-._~";
const char* const subdelim = "!$&'()*+,;=";
int main()
{
 fill( Scheme , alnum, "+-.");
 fill( Unreserved, alnum, unreserved);
 fill( GenDelim , alnum, ":/?#[]@");
 fill( SubDelim , alnum, subdelim);
 fill( PCharSlash, alnum, ":@/%");
 fill( PCharSlash, unreserved, subdelim);
 fill( HexDigit, "0123456789", "abcdef" "ABCDEF");
 fill( Query, alnum, "/?:@%");
 fill( Query, unreserved, subdelim);
 fill( Userinfo, alnum, ":%");
 fill( Userinfo, unreserved, subdelim);
 fill( IPv6Char, "0123456789", "abcdef" "ABCDEF" ":");
 print_table();
}
