#include <stdio.h>
#include <stdlib.h>

#include "../sds/sds.h"
#include "../sds/sdsalloc.h"

#include "kardashev-scale.h"

int main(int argc, char** argv)
{
    
    char *second_argument = argv[1];
    if (argc != 2)
    {
        printf("Incorrect number of arguments. Enter only the power of the civilization in watts.\n");
        exit(1);  // Exit program with an exit status of 1 (error)
    }
    else
    {
        // Convert string to double
        double kardashev_input;
        sscanf(second_argument, "%lf", &kardashev_input);
        
        
        if (kardashev_input < 1000000)
        {
            printf("Civilization's power (watts) is too low. Enter at least 10^6 watts.\n");
            exit(1);
        }
        
        
        sds intro = sdsnew("Civilization's Kardashev rating:");
        printf("%s %lf\n", intro, kardashev_rating(kardashev_input));
        
        sdsfree(intro);
    }
    return 0;
}
