#include "../src/kardashev-scale.h"
#include "../Unity/src/unity.h"


void setUp(void){}

void tearDown(void){}

void test_kardashev_rating(void)
{
    TEST(kardashev_rating(), 0)
    TEST(kardashev_rating(), 1)
    TEST(kardashev_rating(), 2)
    TEST(kardashev_rating(), 3)

    TEST(kardashev_rating(), 0)
    TEST(kardashev_rating(), 0)
}

int main(void) {
    UNITY_BEGIN();

    RUN_TEST(test_kardashev_rating)

    return UNITY_END();
}
