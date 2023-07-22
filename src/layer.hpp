#include "util.hpp"

// Data oriented design of the layer
template <std::size_t In, std::size_t Out = 1, typename ActivationFunction = Tanh>
struct Layer
{
    constexpr Layer(void) { neuron_outputs[In] = 1.0; }
    constexpr explicit Layer(ActivationFunction f) : activationFunction(f)
    {
        neuron_outputs[In] = 1.0;
    }

    // Size of neurons including the bias neuron
    constexpr std::size_t size(void) const { return sizeof(neuron_outputs) / sizeof(neuron_outputs[0]); }
    // not including bias neuron
    constexpr std::size_t next_size(void) const { return Out; }
    constexpr std::size_t w_size(void) const { return size() * Out; }

    ActivationFunction activationFunction{};

    // + 1 output represents a bias neuron
    double neuron_outputs[In + 1]{};
    double neuron_gradients[In + 1]{};
    double weights[(In + 1) * Out]{};
    double weight_deltas[(In + 1) * Out]{};
};