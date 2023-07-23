#import "Basic";
#load "../lib/astronomy_distance_units_converter.jai";

test_AU_to_gigameters :: ()
{
    astronomy_units : Astronomy_Units;
    assert(cast(int) AU_to_gigameters(0, astronomy_units.meters_in_AU) == 0);
    assert(cast(int) AU_to_gigameters(1, astronomy_units.meters_in_AU) == 149);
    assert(cast(int) AU_to_gigameters(2, astronomy_units.meters_in_AU) == 299);
    assert(cast(int) AU_to_gigameters(4.8, astronomy_units.meters_in_AU) == 718);
    assert(cast(int) AU_to_gigameters(100, astronomy_units.meters_in_AU) == 14959);

    print("Tests for AU_to_gigameters have passed successfully!\n");
}

test_parsecs_to_gigameters :: ()
{
    astronomy_units : Astronomy_Units;
    assert(cast(int) parsecs_to_gigameters(0, astronomy_units.meters_in_parsecs) == 0);
    assert(cast(int) parsecs_to_gigameters(1, astronomy_units.meters_in_parsecs) == 30856776);
    assert(cast(int) parsecs_to_gigameters(3, astronomy_units.meters_in_parsecs) == 92570329);
    assert(cast(int) parsecs_to_gigameters(64.0, astronomy_units.meters_in_parsecs) == 1974833685);

    print("Tests for parsecs_to_gigameters have passed successfully!\n");
}

test_light_years_to_gigameters :: ()
{
    astronomy_units : Astronomy_Units;
    assert(cast(int) light_years_to_gigameters(0, astronomy_units.meters_in_ly(cast(int) seconds.seconds_in_day)) == 0);
    assert(cast(int) light_years_to_gigameters(1, astronomy_units.meters_in_ly(cast(int) seconds.seconds_in_day)) == 9460730);
    assert(cast(int) light_years_to_gigameters(2.5, astronomy_units.meters_in_ly(cast(int) seconds.seconds_in_day)) == 23651826);
    assert(cast(int) light_years_to_gigameters(56.8, astronomy_units.meters_in_ly(cast(int) seconds.seconds_in_day)) == 537369499);

    print("Tests for light_years_to_gigameters have passed successfully!\n");
}

main :: ()
{
    test_AU_to_gigameters();
    test_parsecs_to_gigameters();
    test_light_years_to_gigameters();
    
    print("\n");
    print("All tests have passed successfully!\n");
}
