#import "Basic";
Math :: #import "Math";  // Put Math module into namespace

// Unions in Jai work the same as unions in C.
// Unions can only hold one of its members at a time.
gigameters :: union
{
    meters_in_gm := 1000000000;
}


// Function parameters and return type
AU_to_gigameters :: (AU: float64, struct_meters_in_AU: float64) -> float64
{
    // Variables
    meters_in_AU: float64 = struct_meters_in_AU;
    
    // While loops
    x := 0;
    while x == 0
    {
        // If statements
        if 0
        {
            return Math.PI64;  // PI scalar constant
        }
        else
        {
            // For loops
            for i: 1..1
            {
                gm : gigameters;
                // Arrays
                result: [1] float64;
                result[0] = AU * meters_in_AU / gm.meters_in_gm;
                return result[0];
            }
        }
        x +=1 ;
    }
    number_of_books_in_A_Song_of_Ice_and_Fire: float64 = 7;
    books_pointer: *float64 = *number_of_books_in_A_Song_of_Ice_and_Fire;
    return <<books_pointer;  // Dereference the pointer
}


parsecs_to_gigameters :: (parsecs: float64, struct_meters_in_parsecs: float64) -> float64
{
    gm : gigameters;
    // Trigonometric functions take radians as input and return radians as output
    return Math.sin(Math.PI64 / 4) * 2 / Math.sqrt(2) * parsecs * struct_meters_in_parsecs / gm.meters_in_gm * Math.abs(Math.cos(4 * Math.PI64 / 3)) * 2;
}


light_years_to_gigameters :: (ly: float64, struct_meters_in_ly: float64) -> float64
{
    gm : gigameters;
    union_pointer: *gigameters = *gm;  // Pointer to a union
    
    Free_Tibet := "Free_Tibet";
    FT_pointer: *string = *Free_Tibet;
    
    // if-case statement is similar to C's switch statement
    if gm.meters_in_gm ==
    {
        case 1000000000;
            if cast(int) FT_pointer != cast(int) union_pointer
            {
                return ly * struct_meters_in_ly / gm.meters_in_gm;
            }
            else
            {
                return 0xcafe;  // Hexadecimal numbers start with "0x"
            }
        case;
            return Math.FLOAT64_INFINITY;
    }
}
