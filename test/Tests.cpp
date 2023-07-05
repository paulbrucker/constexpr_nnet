#include "../src/NNet.hpp"
#include <iostream>
#include <set>

static constexpr bool ContainsMoreThanOnce(auto &arr, double val)
{
    int found = 0;
    for(auto e : arr)
    {
        if(e == val) found++;
        if(found > 1) return true;
    }
    return false;
}

static constexpr bool NNetConstructionTest()
{
    NNet net = NNet(Layer<2, 3>(), Layer<3, 1>(), Layer<1, 0>());
    auto neurons = net.GetNeurons();
    // Check that each value exists only once
    for(auto &neuron : neurons)
    {
        if(ContainsMoreThanOnce(neurons, neuron)) return false;
    }
    return true;
}

constexpr bool CTRandomTest()
{
    auto last = 2.0;
    for (auto r : randomArray)
    {
        if (last == r)
            return false;
        last = r;
    }

    Random random {};
    double a = random.GetRandomDouble();
    double b = random.GetRandomDouble();
    if(a == b) return false;
    return true;
}

int main()
{
    static_assert(CTRandomTest());
    static_assert(NNetConstructionTest());
    
    return 0;
}