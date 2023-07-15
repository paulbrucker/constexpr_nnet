#include "util/CTMath.hpp"

#include <type_traits>
#include <iostream>

struct Neuron
{
public:
    constexpr Neuron() = default;
    constexpr void set_output(double output) { output_ = output; }
    constexpr void set_gradient(double gradient) { gradient_ = gradient; }
    constexpr double get_output(void) const { return output_; }
    constexpr double get_gradient(void) const { return gradient_; }

private:
    double output_ = 0.0;
    double gradient_ = 0.0;
};

// Number of Neurons, Number of Outputs = Number of Neurons * Number of Neurons of the next Layer.
// Function default is Sigmoid.
template <std::size_t NeuronNum, std::size_t Outputs, typename Function = Sigmoid>
class Layer
{
private:
    std::array<Neuron, NeuronNum> neurons_{};
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

    
    constexpr void set_neuron_output(const std::array<double, NeuronNum> &inputs)
    {
        for (std::size_t i = 0; i < neurons_.size(); ++i)
        {
            neurons_[i].set_output(inputs[i]);
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
                sum += prevNeurons[s].get_output() * prevWeights[s * neurons_.size()];
            }

            neurons_[i].set_output(activationFunction_.Calc(sum));
        }
    }

    // TODO: BACK PROPAGATION HELPERS
    constexpr void calculate_output_gradient(double value)
    {
        
    }

    // TODO: Update the neurons + weights

};