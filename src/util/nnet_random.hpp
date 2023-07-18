#ifndef RANDOM_H
#define RANDOM_H

// Maximal number of generated random doubles
#define MAX_RANDOM 100

#include <type_traits>
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


struct Random
{
public:
    // Get a random double between -1 and 1
    constexpr double GetRandomDouble(int x) const
    {
        return 2 * randomArray[x % MAX_RANDOM] - 1;
    }
};

static constexpr Random RNG {};

#endif
