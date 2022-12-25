#include <stdio.h>
#include "kardashev-scale.h"


int main(int argc, char** argv)
{
    char *second_argument = argv[1];
    if (argc != 2)
    {
        printf("Incorrect number of arguments. Enter only the power of the civilization in watts.\n");
    }
    else
    {
        // Convert string to double
        double kardashev_input;
        sscanf(second_argument, "%lf", &kardashev_input);
        
        printf("%lf\n", kardashev_rating(kardashev_input));
    }

}
