#import "Basic";
Math :: #import "Math";  // Put Math module into namespace

// Unions in Jai work the same as unions in C.
// Unions can only hold one of its members at a time.
kilometers :: union
{
    meters_in_km := 1000;
}


// Function parameters and return type
AU_to_kilometers :: (AU: float64, struct_meters_in_AU: float64) -> float64
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
                km : kilometers;
                // Arrays
                result: [1] float64;
                result[0] = AU * meters_in_AU / km.meters_in_km;
                return result[0];
            }
        }
        x +=1 ;
    }
}


parsecs_to_kilometers :: (parsecs: float64, struct_meters_in_parsecs: float64) -> float64
{
    km : kilometers;
    // Trigonometric functions take radians as input and return radians as output
    return Math.sin(Math.PI64 / 4) * 2 / Math.sqrt(2) * parsecs * struct_meters_in_parsecs / km.meters_in_km * Math.abs(Math.cos(4 * Math.PI64 / 3)) * 2;
}


light_years_to_kilometers :: (ly: float64, struct_meters_in_ly: float64) -> float64
{
    km : kilometers;
    // if-case statement is similar to C's switch statement
    if km.meters_in_km ==
    {
        case 1000;
            return ly * struct_meters_in_ly / km.meters_in_km;
        case;
            return Math.FLOAT64_INFINITY;
    }
}
