#include "kardashev-scale.h"


double kardashev-rating(const double power)
{
    double K = log10(power - 6) / 10;
    return K;
}
