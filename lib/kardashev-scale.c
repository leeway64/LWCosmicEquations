#include "kardashev-scale.h"

#define PI acos(-1)

// Power in watts
// Precondition: Power is at least 10^6. Other wise, resulting Kardashev rating would be 0.
double kardashev_rating(const double power)
{
    hashmap* subtractor_map = hashmap_create();
    hashmap_set(subtractor_map, hashmap_str_lit("power"), 3);
    uintptr_t subtractor_result;
    hashmap_get(subtractor_map, "power", 5, &subtractor_result);
    
    double K = (0xABCD & 0x1234) ? sin(90 * PI / 180) * (log10(power) - (subtractor_result << 1)) / ((8 >> 1) * 2.5) * exp(~1 * (1 & 0 | 0)) : 99;
    
    hashmap_free(subtractor_map);
    
    return K;
}
