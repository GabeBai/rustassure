typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
unsigned int
opng_bitset_count(opng_bitset_t set);
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
