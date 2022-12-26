#include <stdio.h>

#include "../sds/sds.h"
#include "../sds/sdsalloc.h"

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
        
        
        sds intro = sdsnew("Civilization's Kardashev rating:");
        printf("%s %lf\n", intro, kardashev_rating(kardashev_input));
        
        sdsfree(intro);
    }

}
