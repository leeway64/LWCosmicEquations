#include "kardashev-scale.h"


// Power in watts
// Precondition: Power is at least 10^6. Other wise, resulting Kardashev rating would be 0.
double kardashev_rating(const double power)
{
    // Equation source:
    double K = (log10(power) - 6) / 10;
    return K;
}
