#include <stdio.h>
#include <ctype.h>
#include "CTVector.h"

static constexpr auto seed = (__TIME__[7] - '0') * 1 + (__TIME__[6] - '0') * 10 + (__TIME__[4] - '0') * 60 + (__TIME__[3] - '0') * 600 + (__TIME__[1] - '0') * 3600 + (__TIME__[0] - '0') * 36000;

#define a 1664525    // Multiplier
#define c 1013904223 // Increment
#define m 4294967296 // Modulus (2^32)
#define RANDOM_DOUBLE() (randomDouble((lcg_random(seed * __COUNTER__)))


constexpr unsigned lcg_random(unsigned s)
{
    unsigned t = (a * s + c) % m;
    return t;
}

constexpr double randomDouble(unsigned x)
{
    constexpr unsigned max = 1000000; // Maximale Anzahl der Nachkommastellen
    return static_cast<double>(x % max) / max;
}


class Random
{
private:
    CTVector<double, 10> data {};
    int i = 0;

public:
    constexpr Random()
    {
        data.push_back(RANDOM_DOUBLE()));
        data.push_back(RANDOM_DOUBLE()));
        data.push_back(RANDOM_DOUBLE()));
        data.push_back(RANDOM_DOUBLE()));
        data.push_back(RANDOM_DOUBLE()));
        data.push_back(RANDOM_DOUBLE()));
        data.push_back(RANDOM_DOUBLE()));
        data.push_back(RANDOM_DOUBLE()));
        data.push_back(RANDOM_DOUBLE()));
    }
    constexpr double GetRandom()
    {
        i++;
        return data[i % data.size()];
    }
    constexpr auto GetData() const { return data; }
};
