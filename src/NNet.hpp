#include "util/CTMath.hpp"
#include "util/CTRandom.hpp"
#include "util/CTVector.h"
#include "Config.hpp"

#include <array>
#include <tuple>

template <typename... ActivationsFunctions>
class NNet
{
private:
    // Random Double Generator
    Random random {};

    // Activationfunctions per neuron layer
    std::tuple<ActivationsFunctions...> activationFunctions_;

    // Representing the neuron layers
    CTVector<CTVector<double, MAX_NEURONS>, sizeof...(ActivationsFunctions)> neurons_;

    // Representing the weights between the layers
    using WeightLayer = CTVector<double, MAX_WEIGHTS>;
    CTVector<WeightLayer, sizeof...(ActivationsFunctions) - 1> weights_;

public:
    template<typename... Topology>
    // constexpr NNet(const std::array<std::size_t, sizeof...(ActivationsFunctions)> &topology)
    constexpr NNet(Topology... topology)
    {
        CTVector<int, sizeof...(Topology)> t = {topology...};
        
        // Initialize the neurons
        for (std::size_t i = 0; i < sizeof...(Topology); ++i)
        {
            neurons_.push_back(CTVector<double, MAX_NEURONS>{});
            for (int j = 0; j < t[i]; ++j)
            {
                neurons_[i].push_back(random.GetRandomDouble());
            }
        }

        // Initialize the weights
        for (std::size_t i = 1; i < sizeof...(Topology); ++i)
        {
            int prevLayerSize = t[i - 1] * t[i];
            int currLayerSize = t[i];

            weights_.push_back(CTVector<double, MAX_WEIGHTS>{});
            for (int j = 0; j < prevLayerSize * currLayerSize; ++j)
            {
                weights_[i - 1].push_back(random.GetRandomDouble());
            }
        }
    }

    // For testing purposes
    constexpr auto GetNeurons(void) const 
    {
        return neurons_;
    }

    constexpr auto GetWeights(void) const
    {
        return weights_;
    }
};