 int
isalnum(int _c)
{
 return (__istype(_c, 0x00000100L|0x00000400L));
}
