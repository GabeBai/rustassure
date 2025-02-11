typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef long unsigned int rsize_t;
typedef int wchar_t;
typedef long double max_align_t;
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
unsigned int
opng_bitset_count(opng_bitset_t set);
int
opng_bitset_find_first(opng_bitset_t set);
int
opng_bitset_find_next(opng_bitset_t set, int elt);
int
opng_bitset_find_last(opng_bitset_t set);
int
opng_bitset_find_prev(opng_bitset_t set, int elt);
opng_bitset_t
opng_rangeset_string_to_bitset(const char *str, size_t *end_idx);
size_t
opng_bitset_to_rangeset_string(char *sbuf, size_t sbuf_size, opng_bitset_t set);

typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef long int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
struct __darwin_pthread_handler_rec {
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};
struct _opaque_pthread_attr_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_cond_t {
 long __sig;
 char __opaque[40];
};
struct _opaque_pthread_condattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_mutex_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_mutexattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_once_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_rwlock_t {
 long __sig;
 char __opaque[192];
};
struct _opaque_pthread_rwlockattr_t {
 long __sig;
 char __opaque[16];
};
struct _opaque_pthread_t {
 long __sig;
 struct __darwin_pthread_handler_rec *__cleanup_stack;
 char __opaque[8176];
};
typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;
typedef __uint32_t __darwin_wctype_t;
typedef __darwin_ct_rune_t ct_rune_t;
typedef __darwin_rune_t rune_t;
typedef __darwin_wint_t wint_t;
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
extern _RuneLocale *_CurrentRuneLocale;
unsigned long ___runetype(__darwin_ct_rune_t);
__darwin_ct_rune_t ___tolower(__darwin_ct_rune_t);
__darwin_ct_rune_t ___toupper(__darwin_ct_rune_t);
inline int
isascii(int _c)
{
 return ((_c & ~0x7F) == 0);
}
int __maskrune(__darwin_ct_rune_t, unsigned long);
inline int
__istype(__darwin_ct_rune_t _c, unsigned long _f)
{
 return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
  : !!__maskrune(_c, _f));
}
inline __darwin_ct_rune_t
__isctype(__darwin_ct_rune_t _c, unsigned long _f)
{
 return (_c < 0 || _c >= (1 <<8 )) ? 0 :
  !!(_DefaultRuneLocale.__runetype[_c] & _f);
}
__darwin_ct_rune_t __toupper(__darwin_ct_rune_t);
__darwin_ct_rune_t __tolower(__darwin_ct_rune_t);
inline int
__wcwidth(__darwin_ct_rune_t _c)
{
 unsigned int _x;
 if (_c == 0)
  return (0);
 _x = (unsigned int)__maskrune(_c, 0xe0000000L|0x00040000L);
 if ((_x & 0xe0000000L) != 0)
  return ((_x & 0xe0000000L) >> 30);
 return ((_x & 0x00040000L) != 0 ? 1 : -1);
}
inline int
isalnum(int _c)
{
 return (__istype(_c, 0x00000100L|0x00000400L));
}
inline int
isalpha(int _c)
{
 return (__istype(_c, 0x00000100L));
}
inline int
isblank(int _c)
{
 return (__istype(_c, 0x00020000L));
}
inline int
iscntrl(int _c)
{
 return (__istype(_c, 0x00000200L));
}
inline int
isdigit(int _c)
{
 return (__isctype(_c, 0x00000400L));
}
inline int
isgraph(int _c)
{
 return (__istype(_c, 0x00000800L));
}
inline int
islower(int _c)
{
 return (__istype(_c, 0x00001000L));
}
inline int
isprint(int _c)
{
 return (__istype(_c, 0x00040000L));
}
inline int
ispunct(int _c)
{
 return (__istype(_c, 0x00002000L));
}
inline int
isspace(int _c)
{
 return (__istype(_c, 0x00004000L));
}
inline int
isupper(int _c)
{
 return (__istype(_c, 0x00008000L));
}
inline int
isxdigit(int _c)
{
 return (__isctype(_c, 0x00010000L));
}
inline int
toascii(int _c)
{
 return (_c & 0x7F);
}
inline int
tolower(int _c)
{
        return (__tolower(_c));
}
inline int
toupper(int _c)
{
        return (__toupper(_c));
}
inline int
digittoint(int _c)
{
 return (__maskrune(_c, 0x0F));
}
inline int
ishexnumber(int _c)
{
 return (__istype(_c, 0x00010000L));
}
inline int
isideogram(int _c)
{
 return (__istype(_c, 0x00080000L));
}
inline int
isnumber(int _c)
{
 return (__istype(_c, 0x00000400L));
}
inline int
isphonogram(int _c)
{
 return (__istype(_c, 0x00200000L));
}
inline int
isrune(int _c)
{
 return (__istype(_c, 0xFFFFFFF0L));
}
inline int
isspecial(int _c)
{
 return (__istype(_c, 0x00100000L));
}
typedef int errno_t;
extern int * __error(void);
unsigned int
opng_bitset_count(opng_bitset_t set)
{
    unsigned int result;
    result = 0;
    while (set != 0)
    {
        set &= (set - 1);
        ++result;
    }
    return result;
}
int
opng_bitset_find_first(opng_bitset_t set)
{
    int i;
    for (i = 0; i <= OPNG_BITSET_ELT_MAX; ++i)
    {
        if ((((set) & (1U << (i))) != 0))
            return i;
    }
    return -1;
}
int
opng_bitset_find_next(opng_bitset_t set, int elt)
{
    int i;
    for (i = ((elt) > (-1) ? (elt) : (-1)) + 1; i <= OPNG_BITSET_ELT_MAX; ++i)
    {
        if ((((set) & (1U << (i))) != 0))
            return i;
    }
    return -1;
}
int
opng_bitset_find_last(opng_bitset_t set)
{
    int i;
    for (i = OPNG_BITSET_ELT_MAX; i >= 0; --i)
    {
        if ((((set) & (1U << (i))) != 0))
            return i;
    }
    return -1;
}
int
opng_bitset_find_prev(opng_bitset_t set, int elt)
{
    int i;
    for (i = ((elt) < (OPNG_BITSET_ELT_MAX + 1) ? (elt) : (OPNG_BITSET_ELT_MAX + 1)) - 1; i >= 0; --i)
    {
        if ((((set) & (1U << (i))) != 0))
            return i;
    }
    return -1;
}
opng_bitset_t
opng_rangeset_string_to_bitset(const char *str, size_t *end_idx)
{
    opng_bitset_t result;
    const char *ptr;
    int state;
    int num, num1, num2;
    int out_of_range;
    result = 0;
    ptr = str;
    state = 0;
    out_of_range = 0;
    num1 = num2 = -1;
    for ( ; ; )
    {
        { while (isspace(*(ptr))) ++(ptr); };
        switch (state)
        {
        case 0:
        case 2:
            if (*ptr >= '0' && *ptr <= '9')
            {
                num = 0;
                do
                {
                    num = 10 * num + (*ptr - '0');
                    if (num > OPNG_BITSET_ELT_MAX)
                    {
                        out_of_range = 1;
                        num = OPNG_BITSET_ELT_MAX;
                    }
                    ++ptr;
                } while (*ptr >= '0' && *ptr <= '9');
                if (state == 0)
                    num1 = num;
                num2 = num;
                ++state;
                continue;
            }
            break;
        case 1:
            if (*ptr == '-')
            {
                ++ptr;
                num2 = OPNG_BITSET_ELT_MAX;
                ++state;
                continue;
            }
            break;
        }
        if (state > 0)
        {
            state = 0;
            if (num2 > OPNG_BITSET_ELT_MAX)
            {
                out_of_range = 1;
                num2 = OPNG_BITSET_ELT_MAX;
            }
            if (num1 <= num2)
                (*(&result) |= ((num1) <= (num2)) ? (((1U << ((num2) - (num1)) << 1) - 1) << (num1)) : 0U);
            else
                out_of_range = 1;
        }
        if (*ptr == ',' || *ptr == ';')
        {
            ++ptr;
            continue;
        }
        else
        {
            break;
        }
    }
    if (num1 == -1)
    {
        if (end_idx != ((void*)0))
            *end_idx = 0;
        return 0;
    }
    if (end_idx != ((void*)0))
        *end_idx = (size_t)(ptr - str);
    if (out_of_range)
        (*__error()) = 34;
    return result;
}
size_t
opng_bitset_to_rangeset_string(char *sbuf, size_t sbuf_size, opng_bitset_t set);
