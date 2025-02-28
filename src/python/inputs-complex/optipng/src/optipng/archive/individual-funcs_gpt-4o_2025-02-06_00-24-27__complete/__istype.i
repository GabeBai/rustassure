typedef unsigned int __uint32_t;
typedef int __darwin_ct_rune_t;
typedef long unsigned int __darwin_size_t;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef struct {
 __darwin_rune_t __min;
 __darwin_rune_t __max;
 __darwin_rune_t __map;
 __uint32_t *__types;
} _RuneEntry;
typedef struct {
 int __nranges;
 _RuneEntry *__ranges;
} _RuneRange;
typedef struct {
 char __name[14];
 __uint32_t __mask;
} _RuneCharClass;
typedef struct {
 char __magic[8];
 char __encoding[32];
 __darwin_rune_t (*__sgetrune)(const char *, __darwin_size_t, char const **);
 int (*__sputrune)(__darwin_rune_t, char *, __darwin_size_t, char **);
 __darwin_rune_t __invalid_rune;
 __uint32_t __runetype[(1 <<8 )];
 __darwin_rune_t __maplower[(1 <<8 )];
 __darwin_rune_t __mapupper[(1 <<8 )];
 _RuneRange __runetype_ext;
 _RuneRange __maplower_ext;
 _RuneRange __mapupper_ext;
 void *__variable;
 int __variable_len;
 int __ncharclasses;
 _RuneCharClass *__charclasses;
} _RuneLocale;
extern _RuneLocale _DefaultRuneLocale;
int __maskrune(__darwin_ct_rune_t, unsigned long);
 int
__istype(__darwin_ct_rune_t _c, unsigned long _f)
{
 return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
  : !!__maskrune(_c, _f));
}
