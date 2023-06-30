#include "../src/NNet.hpp"
#include <iostream>

static constexpr bool NNetConstructionTest()
{
    NNet<Sigmoid, Sigmoid, Sigmoid> net(2, 3, 1);

    // Check that neurons are random initialized
    auto neurons = net.GetNeurons();
    auto last = 2.0;
    for (auto layer : neurons)
        for (auto neuron : layer)
        {
            if (last == neuron)
                return false;
            last = neuron;
        }

    // Check that the weights are random initialized
    auto weights = net.GetWeights();
    last = 2.0;
    for (auto weightLayer : neurons)
        for (auto weight : weightLayer)
        {
            if (last == weight)
                return false;
            last = weight;
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