#ifndef NET_H
#define NET_H

#include "util/CTVector.h"
#include "Config.hpp"

#include <iostream>

template <typename... Topology>
class Net
{
private:
    using WeightLayer = CTVector<double, MAX_WEIGHTS>;

    // Representing the weight matrix
    CTVector<CTVector<double, MAX_NEURONS>, sizeof...(Topology)> neurons_;
    CTVector<WeightLayer, sizeof...(Topology) - 1> weights_;

    // Returns the initial value of the weight
    constexpr double initNeuronValue()
    {
        return 0.0;
    }
    constexpr double initWeightValue()
    {
        return 0.0;
    }

public:
    // Main Constructor that takes the parameter pack of layer sizes as an input.
    constexpr Net(Topology... topology)
    {
        CTVector<int, sizeof...(topology)> t = {topology...};

        // Initialize the neurons
        for (std::size_t i = 0; i < sizeof...(topology); ++i)
        {
            neurons_.push_back(CTVector<double, MAX_NEURONS>{});
            for (int j = 0; j < t[i]; ++j)
            {
                neurons_[i].push_back(initNeuronValue());
            }
        }

        // Initialize the weights
        for (std::size_t i = 1; i < sizeof...(topology); ++i)
        {
            int prevLayerSize = t[i - 1] * t[i];
            int currLayerSize = t[i];

            weights_.push_back(CTVector<double, MAX_WEIGHTS>{});
            for (int j = 0; j < prevLayerSize * currLayerSize; ++j)
            {
                weights_[i - 1].push_back(initWeightValue());
            }
        }
    }

    void print(void) const
    {
        for (int r = 0; r < 3; ++r)
        {
            for (int i = 0; i < neurons_.size(); ++i)
            {
                if(r < neurons_[i].size())
                    std::cout << " -- " << neurons_[i][r] << " -- ";
                else
                    std::cout << " -- - -- ";
            }
            std::cout << "\n";
        }

        for (std::size_t row = 0; row < MAX_WEIGHTS; ++row)
        {

            for (std::size_t col = 0; col < neurons_.size(); ++col)
            {
                // print neuron layer
                if (row < neurons_[col].size() && col < neurons_.size())
                {
                }
                // std::cout << " -- " << neurons_[col][0] << " -- ";
                // print weight layer
                // if(row < weights_[col].size() && col < weights_.size())
                //     std::cout << weights_[col][row];
            }
            std::cout << "\n";
        }
    }
};

#endif