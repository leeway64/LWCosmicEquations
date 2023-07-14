#import "Basic";

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
            return 300.0;
        }
        else
        {
            // For loops
            for i: 1..1
            {
                // Arrays
                result: [1] float64;
                result[0] = AU * meters_in_AU / 1000;
                return result[0];
            }
        }
        x +=1 ;
    }
}

/*
parsecs_to_kilometers :: (parsecs: float64, struct_meters_in_parsecs: float64) -> float64
{
    print("hello world\n");
}

light_years_to_kilometers :: (ly: float64, struct_meters_in_ly: float64) -> float64
{
    print("hello world\n");
}*/
