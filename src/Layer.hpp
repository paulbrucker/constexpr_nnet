#include "util/CTMath.hpp"

#include <type_traits>
#include <iostream>

class Neuron
{
};

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

    // Generic getter for the arrays and their sizes
    constexpr auto GetNeurons(void) const { return neurons_; }
    constexpr auto GetWeights(void) const { return weights_; }
    constexpr auto GetNumberOfOutputs(void) const { return weights_.size(); }
    constexpr auto GetNumberOfNeurons(void) const { return neurons_.size(); }

    constexpr void set_neuron_values(const std::array<double, NeuronNum> &inputs)
    {
        for (std::size_t i = 0; i < neurons_.size(); ++i)
        {
            neurons_[i] = inputs[i];
        }
    }

    // Calculate new outputs for this layer, with the information of the last layer
    constexpr auto layer_forward_propagate(const auto &previousLayer)
    {
        auto prevWeights = previousLayer.GetWeights();
        auto prevNeurons = previousLayer.GetNeurons();

        for (std::size_t i = 0; i < neurons_.size(); ++i)
        {
            double sum = 0.0;
            for (std::size_t s = 0; s < prevNeurons.size(); ++s)
            {
                sum += prevNeurons[s] * prevWeights[s * neurons_.size()];
            }

            neurons_[i] = activationFunction_.Calc(sum);
        }
    }

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