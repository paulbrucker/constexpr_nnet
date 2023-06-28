#include "../src/Net.h"
#include "../src/util/CTRandom.hpp"
#include <iostream>

int main()
{

    static constexpr Net net(2, 3, 1);
    constexpr Random randomObj;


    for (auto &r : randomObj.GetData())
    {
        std::cout << r << std::endl;
    }
    return 0;
}
