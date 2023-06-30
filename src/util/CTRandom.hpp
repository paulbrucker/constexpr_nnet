#include <type_traits>
#include "../Config.hpp"
#include <array>
// Seed generate from __TIME__
static constexpr auto seed = (__TIME__[7] - '0') * 1 + (__TIME__[6] - '0') * 10 + (__TIME__[4] - '0') * 60 + (__TIME__[3] - '0') * 600 + (__TIME__[1] - '0') * 3600 + (__TIME__[0] - '0') * 36000;

// Macro function for generating a single random value
#define RANDOM_DOUBLE() (randomDouble((lcg_random(seed * __COUNTER__))))

// LCG random algorithm
constexpr unsigned lcg_random(unsigned s)
{
    unsigned t = (1664525 * s + 1013904223) % 4294967296;
    return t;
}

// Fix for staying between 0 and 1
constexpr double randomDouble(unsigned x)
{
    constexpr unsigned max = 1000000; // Maximale Anzahl der Nachkommastellen
    return static_cast<double>(x % max) / max;
}

constexpr std::array<double, MAX_RANDOM> randomArray = {
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(),
    RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE(), RANDOM_DOUBLE()

};
enum
{
    COUNTER_BASE = __COUNTER__
};
#define LOCAL_COUNTER (__COUNTER__ - COUNTER_BASE)
// #define GetRandomDouble() randomArray[LOCAL_COUNTER % randomArray.size()]

struct Random
{
public:
    constexpr double GetRandomDouble()
    {
        return randomArray[i++ % randomArray.size()];
    }

private:
    int i = 0;
};
