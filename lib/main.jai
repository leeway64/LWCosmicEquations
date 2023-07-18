// Modules are located in jai/modules/ and are imported with "#import"
#import "Basic";
#import "String";
#import "File";  // Need to import File to use read_entire_file

// #load is like copying and pasting the loaded file into the calling file
#load "astronomy_distance_units_converter.jai";

// The speed of light is defined to be exactly 299,792,458 m/s
light_speed_meters_per_second :: 299792458;  // Constants have "::" syntax


// Macros use the "#expand" syntax. The compiler inlines the macro code. In that way, macros are
// similar to inline functions.
print_help :: () #expand
{
    print("help message\n");
}

// enums give names to integer constants
// If there was another field after seconds_in_day, it would have the value seconds_in_day + 1
seconds :: enum
{
    // 60 seconds in a minute, 60 minutes in an hour, 24 hours in a day
    seconds_in_day :: 60 * 60 * 24;
}


// Structs in Jai are very similar to structs in C
Astronomy_Units :: struct
{
    meters_in_AU: float64 = 149597870700;
    meters_in_parsecs: float64 = 30856775814913673;
    // 365.25 days in a year
    meters_in_ly :: (seconds: int) -> float64  // structs can have functions inside of them
    {
        return light_speed_meters_per_second * seconds * 365.25;
    }
}


main :: ()
{
    astronomy_units : Astronomy_Units;
    print("AU to kilometers: %\n", AU_to_kilometers(2.5, astronomy_units.meters_in_AU));
    print("Parsecs to kilometers: %\n", parsecs_to_kilometers(5, astronomy_units.meters_in_parsecs));
    print("Light-years to kilometers: %\n", light_years_to_kilometers(1, astronomy_units.meters_in_ly(cast(int) seconds.seconds_in_day)));

    // Reading a file
    data, success := read_entire_file("lib/success.txt");
    print("%", data);
    print_help();
}
