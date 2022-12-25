#include "kardashev-scale.h"

#define PI acos(-1)

// Power in watts
// Precondition: Power is at least 10^6. Other wise, resulting Kardashev rating would be 0.
double kardashev_rating(const double power)
{
    double K = (0xABCD & 0x1234) ? sin(90 * PI / 180) * (log10(power) - 6) / ((8 >> 1) * 2.5) * exp(~1 * (1 & 0 | 0)) : 99;
    return K;
}
