#ifndef NET_H
#define NET_H

#include "util/CTVector.h"
#include "Config.hpp"
#include "Neuron.hpp"

template <typename... Topology>
class Net
{
private:

    // Representing the weight matrix
    CTVector<CTVector<Neuron, MAX_NEURONS>, sizeof...(Topology)> layers_;
    CTVector<CTVector<double, MAX_WEIGHTS>, sizeof...(Topology) - 1> weights_;

    // constexpr void updateNeurons(void)
    // {
    //     layers_
    // }

    // Returns the initial value of the weight
    constexpr double get_init_weights(void) const
    {
        return 0.0;
    }

public:
    constexpr Net(Topology... topology)
    {
        CTVector<int, sizeof...(topology)> t = {topology...};

        // Initialize the neurons
        for(std::size_t i = 0; i < sizeof...(topology); ++i)
        {
            layers_.push_back(CTVector<Neuron, MAX_NEURONS> {});
            for(int j = 0; j < t[i]; ++j)
            {
                layers_[i].push_back(Neuron(0.0));
            }
        }

        // Initialize the weights
        for (std::size_t i = 1; i < sizeof...(topology); ++i)
        {
            int prevLayerSize = t[i - 1] * t[i];
            int currLayerSize = t[i];

            weights_.push_back(CTVector<double, MAX_WEIGHTS> {});
            for (int j = 0; j < prevLayerSize * currLayerSize; ++j)
            {
                weights_[i - 1].push_back(get_init_weights());
            }

        }

    }
};

#endif