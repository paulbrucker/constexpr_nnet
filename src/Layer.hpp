#include "Config.hpp"

#include <type_traits>
#include <iostream>

template <std::size_t NeuronNum, std::size_t Outputs>
class Layer
{
private:
    std::array<double, NeuronNum> neurons_{};
    std::array<double, NeuronNum * Outputs> weights_{};

public:
    constexpr Layer()
    {
        InitializeValues();
    }

    constexpr void InitializeValues()
    {
        int i = 0;
        for (auto &n : neurons_)
        {
            n = RNG.GetRandomDouble(i);
            i++;
        }
        for (auto &w : weights_)
        {
            w = RNG.GetRandomDouble(i);
            i++;
        }
    }
    constexpr auto GetNeurons(void) const { return neurons_; }
    constexpr auto GetWeights(void) const { return weights_; }

    void Print(void) const
    {
        std::cout << neurons_.size() << " NEURONS:" << std::endl;
        for (auto &n : neurons_)
            std::cout << n << std::endl;

        std::cout << weights_.size() << " WEIGHTS:" << std::endl;
        for (auto &n : weights_)
            std::cout << n << std::endl;
    }
};