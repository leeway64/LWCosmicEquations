// Modules are located in jai/modules/ and are imported with "#import"
#import "Basic";
#import "String";
#import "File";  // Need to import File to use read_entire_file
#import "jai-ryu";  // 3rd-party module (necessary for string_to_f64)

// #load is like copying and pasting the loaded file into the calling file
#load "astronomy_distance_units_converter.jai";

// The speed of light is defined to be exactly 299,792,458 m/s
light_speed_meters_per_second :: 299792458;  // Constants have "::" syntax


// Macros use the "#expand" syntax. The compiler inlines the macro code. In that way, macros are
// similar to inline functions.
print_help :: () #expand
{
    print("Astronomy Distance Units Converter\n");
    print("Usage: main [option]\n");
    print("Options and arguments\n");
    print("\t --help or -h: Print the help message\n");
    print("\t -AU [value]: Convert AUs to gigameters\n");
    print("\t -pc [value]: Convert parsecs to gigameters\n");
    print("\t -ly [value]: Convert light-years to gigameters\n");
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
    meters_in_parsecs: float64 = 96939420213600000 / Math.PI64;
    // 365.25 days in a year
    meters_in_ly :: (seconds: int) -> float64  // structs can have functions inside of them
    {
        return light_speed_meters_per_second * seconds * 365.25;
    }
}


main :: ()
{
    number := cast(int) 1234567890000 / 1000000;
    // prints out the float number
    print("%\n", number);
/*
    args := get_command_line_arguments();
    
    // Reading a file
    data, success := read_entire_file("lib/success.txt");
    
    if args.count == 2
    {
        if args[1] == "--help" || args[1] == "-h"
        {
            print_help();
        }
        else
        {
            print("Unrecognized command-line arguments. Run main -h or main --help to show help.");
        }
    }
    else if args.count == 3
    {
        astronomy_units : Astronomy_Units;
        input_value: float64 = string_to_f64(args[2]);
        if args[1] ==
        {
            case "-AU";
                gm_result := AU_to_gigameters(input_value, astronomy_units.meters_in_AU);
                print("AU to gigameters: %\n", formatFloat(gm_result, trailing_width=3, zero_removal=.YES));
                print("%", data);
            case "-pc";
                pc_result := parsecs_to_gigameters(input_value, astronomy_units.meters_in_parsecs);
                print("Parsecs to gigameters: %\n", formatFloat(pc_result, trailing_width=3, zero_removal=.YES));
                print("%", data);
            case "-ly";
                ly_to_gm_ptr: (float64, float64) -> float64 = light_years_to_gigameters;  // Function pointer
                ly_result := ly_to_gm_ptr(input_value, astronomy_units.meters_in_ly(cast(int) seconds.seconds_in_day));

                print("Light-years to gigameters: %\n", formatFloat(ly_result, trailing_width=3, zero_removal=.YES));
                print("%", data);
            case;
                print("Unrecognized command-line arguments. Run main -h or main --help to show help.");
        }
    }
    else
    {
        print("Unrecognized command-line arguments. Run main -h or main --help to show help.");
    }
    */
}
