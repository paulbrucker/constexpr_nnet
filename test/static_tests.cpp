#include "../src/NNet.hpp"
#include <iostream>
#include <set>

static constexpr bool ContainsMoreThanOnce(auto &arr, double val)
{
    int found = 0;
    for (auto e : arr)
    {
        if (e == val)
            found++;
        if (found > 1)
            return true;
    }
    return false;
}

static constexpr bool NNetConstructionTest(void)
{
    NNet net = NNet(Layer<2, 3>(), Layer<3, 1>(), Layer<1, 0>());
    auto neurons = net.GetWeights();
    // Check that each value exists only once
    for (auto &neuron : neurons)
    {
        if (ContainsMoreThanOnce(neurons, neuron))
            return false;
    }
    return true;
}

constexpr bool CTRandomTest(void)
{
    auto last = 2.0;
    for (auto r : randomArray)
    {
        if (last == r)
            return false;
        last = r;
    }

    Random random{};
    double a = random.GetRandomDouble();
    double b = random.GetRandomDouble();
    if (a == b)
        return false;
    return true;
}

// Testing forward propagation.
// Criteria: neuron values before and after training are different.
constexpr bool positive_trainTest(void)
{
    NNet net = NNet(Layer<2, 3>(), Layer<3, 1>(), Layer<1, 0>());

    auto data = DataSet(
        DataEntry<2, 1>({{0.0, 0.0}}, {{0.0}}),
        DataEntry<2, 1>({{0.0, 1.0}}, {{1.0}}),
        DataEntry<2, 1>({{1.0, 0.0}}, {{1.0}}),
        DataEntry<2, 1>({{1.0, 1.0}}, {{0.0}}));

    auto pre_neurons = net.GetWeights();

    net.Train(data, 5);

    auto post_neurons = net.GetWeights();

    for (auto &n : pre_neurons)
    {
        for (auto &pn : post_neurons)
        {
            if (n == pn)
                return false;
        }
    }

    return true;
}

int main()
{
    static_assert(CTRandomTest());
    static_assert(NNetConstructionTest());
    static_assert(positive_trainTest());

    return 0;
}