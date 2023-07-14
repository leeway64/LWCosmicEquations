#import "Basic";
#import "String";
#import "File";  // Need to import File to use read_entire_file

converter :: #import,file "lib/astronomy-distance-units-converter.jai";

// Structs in Jai are very similar to structs in C
Astronomy_Units :: struct
{
    meters_in_AU: float64 = 149597870700;
    struct_meters_in_parsecs: float64;
    struct_meters_in_ly: float64;
}

main :: ()
{
    astronomy_units : Astronomy_Units;
    print("%\n", converter.AU_to_kilometers(1, astronomy_units.meters_in_AU));

    // Reading a file
    data, success := read_entire_file("success.txt");
    print("%", data);
}
