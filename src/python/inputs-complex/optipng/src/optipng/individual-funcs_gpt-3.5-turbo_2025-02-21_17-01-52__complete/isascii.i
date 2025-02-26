inline int
isascii(int _c)
{
 return ((_c & ~0x7F) == 0);
}
