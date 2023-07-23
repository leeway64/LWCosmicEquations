// Modules are located in jai/modules/ and are imported with "#import"
#import "Basic";
#import "String";
#import "File";  // Need to import File to use read_entire_file
#import "jai-ryu";  // 3rd-party module (necessary for string_to_f64)

// #load is like copying and pasting the loaded file into the calling file
#load "astronomy_distance_units_converter.jai";


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

main :: ()
{
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
                print("% AU in gigameters: %\n", args[2], formatFloat(gm_result, trailing_width=3, zero_removal=.YES));
                print("%", data);
            case "-pc";
                pc_result := parsecs_to_gigameters(input_value, astronomy_units.meters_in_parsecs);
                print("%2 parsecs in gigameters: %1\n", formatFloat(pc_result, trailing_width=3, zero_removal=.YES), args[2]);
                print("%", data);
            case "-ly";
                ly_to_gm_ptr: (float64, float64) -> float64 = light_years_to_gigameters;  // Function pointer
                // int is an alias for s64 (signed64)
                ly_result := ly_to_gm_ptr(input_value, astronomy_units.meters_in_ly(cast(int) seconds.seconds_in_day));

                print("% light-years in gigameters: %\n", args[2], formatFloat(ly_result, trailing_width=3, zero_removal=.YES));
                print("%", data);
            case;
                print("Unrecognized command-line arguments. Run main -h or main --help to show help.");
        }
    }
    else
    {
        print("Unrecognized command-line arguments. Run main -h or main --help to show help.");
    }
}
