typedef long unsigned int size_t;
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
opng_bitset_t
opng_rangeset_string_to_bitset(const char *str, size_t *end_idx);
extern int * __error(void);
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
