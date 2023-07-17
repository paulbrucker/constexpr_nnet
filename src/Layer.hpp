#include "util.hpp"

// Data oriented design of the layer
template <std::size_t In, std::size_t Out, typename ActivationFunction = Tanh>
struct Layer
{
    constexpr Layer(void) { init_weights(); }
    constexpr Layer(ActivationFunction f)
    {
        activationFunction = f;
        init_weights();
    }
    constexpr void init_weights(void)
    {
        for (std::size_t i = 0; i < (In * Out); ++i)
        {
            weights[i] = RNG.GetRandomDouble((In << i) + (Out << i));
        }
    }

    constexpr std::size_t size(void) const { return In; }
    constexpr std::size_t next_size(void) const { return Out; }
    constexpr std::size_t w_size(void) const { return In * Out; }

    ActivationFunction activationFunction{};

    double neuron_outputs[In]{};
    double neuron_gradients[In]{};
    double weights[In * Out]{};
    double weight_deltas[In * Out]{};
};