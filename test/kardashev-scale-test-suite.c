#include "../lib/kardashev-scale.h"
#include "../Unity/src/unity.h"


void setUp(void){}

void tearDown(void){}

void test_kardashev_rating(void)
{
    TEST_ASSERT_DOUBLE_WITHIN(0.0001, kardashev_rating(pow(10, 6)), 0);
    TEST_ASSERT_DOUBLE_WITHIN(0.0001, kardashev_rating(pow(10, 16)), 1);
    TEST_ASSERT_DOUBLE_WITHIN(0.0001, kardashev_rating(pow(10, 26)), 2);
    TEST_ASSERT_DOUBLE_WITHIN(0.0001, kardashev_rating(pow(10, 36)), 3);

    TEST_ASSERT_DOUBLE_WITHIN(0.0001, kardashev_rating(pow(123.5, 17)), 2.9558338279126637103994695562571);
    TEST_ASSERT_DOUBLE_WITHIN(0.0001, kardashev_rating(pow(29.877, 25)), 3.0883424677265518971521786629789);
}

int main(void)
{
    UNITY_BEGIN();

    RUN_TEST(test_kardashev_rating);

    return UNITY_END();
}
