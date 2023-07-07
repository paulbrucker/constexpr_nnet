#include "Config.hpp"
#include "util/CTMath.hpp"

#include <type_traits>
#include <iostream>

// Number of Neurons, Number of Outputs = Number of Neurons * Number of Neurons of the next Layer.
// Function default is Sigmoid. 
template <std::size_t NeuronNum, std::size_t Outputs, typename Function = Sigmoid>
class Layer
{
private:
    std::array<double, NeuronNum> neurons_{};
    std::array<double, NeuronNum * Outputs> weights_{};

    Function activationFunction_;

public:
    // Default constructor
    constexpr Layer()
    {
        InitializeValues();
        activationFunction_ = Sigmoid();
    }

    // Constructor with custom activation function
    constexpr Layer(Function f)
    {
        InitializeValues();
        activationFunction_ = f;
    }

    // Random initialize the neuron biases and weights (Outputs)
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

    // Generic getter for the arrays
    constexpr auto GetNeurons(void) const { return neurons_; }
    constexpr auto GetWeights(void) const { return weights_; }
    constexpr auto GetOutputSize(void) const { return weights_.size(); }


    // TODO: Update the neurons + weights

    // To be removed...
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