#ifndef NNET_HPP
#define NNET_HPP

#include "layer.hpp"

template <typename... Layers>
class NNet
{
private:
    // This tuple represents the layers in the neural network
    std::tuple<Layers...> layers_;
    static constexpr std::size_t net_size = sizeof...(Layers);

    // Overall network error
    double error_ = 0.0;
    double average_error_ = 0.0;
    double average_error_smoothing_ = 0.0;

    // Takes a the input set of a dataentry and forward propagates it
    constexpr void forward_propagate(const auto &input)
    {
        // Assign the inputs to the input layer
        auto &input_layer = std::get<0>(layers_);
        // - 1 because of the bias
        for (std::size_t i = 0; i < input_layer.size() - 1; ++i)
        {
            input_layer.neuron_outputs[i] = input[i];
        }

        forward_propagate_iter();
    }

    // Iterates over the layer tuple and do forward propagate every layer
    template <std::size_t index = 1>
    constexpr void forward_propagate_iter(void)
    {
        if constexpr (index < net_size)
        {
            auto &prevLayer = std::get<index - 1>(layers_);
            auto &layer = std::get<index>(layers_);

            for (std::size_t i = 0; i < layer.size() - 1; ++i)
            {
                double sum = 0.0;
                for (std::size_t s = 0; s < prevLayer.size(); ++s)
                {
                    sum += prevLayer.neuron_outputs[s] * prevLayer.weights[(s * (layer.size() - 1)) + i];
                }
                layer.neuron_outputs[i] = layer.activationFunction.Calc(sum);
            }

            forward_propagate_iter<index + 1>();
        }
    }

    // Backwards propagation algorithm implementation
    constexpr void back_propagate(const auto &output)
    {
        auto &output_layer = std::get<net_size - 1>(layers_);
        error_ = 0.0;

        // Calculate the network error
        for (std::size_t i = 0; i < output_layer.size() - 1; ++i)
        {
            double tmp_err = output[i] - output_layer.neuron_outputs[i];
            error_ += tmp_err * tmp_err;
        }

        error_ /= output_layer.size() - 1;
        error_ = sqr(error_);

        average_error_ = (average_error_ * average_error_smoothing_ + error_) / (average_error_smoothing_ + 1.0f);

        // Calculate the output gradients
        for (std::size_t i = 0; i < output_layer.size() - 1; ++i)
        {
            double o = output_layer.neuron_outputs[i];
            double err = output[i] - o;
            output_layer.neuron_gradients[i] = err * (1.0 - o * o);
        }

        // Calculate the hidden gradients
        calculate_hidden_gradients();
        // Update the weights of the neural network
        update_weights();
    }

    template <std::size_t index = net_size - 2>
    constexpr void calculate_hidden_gradients(void)
    {
        if constexpr (index > 0)
        {
            // Calulate the hidden gradients
            auto &layer = std::get<index>(layers_);
            auto &next_layer = std::get<index + 1>(layers_);
      
            for (std::size_t i = 0; i < layer.size(); ++i)
            {
                double sum = 0.0;
                for (std::size_t n = 0; n < next_layer.size() - 1; ++n)
                {
                    sum += layer.weights[(i * (next_layer.size() - 1)) + n] * next_layer.neuron_gradients[n];
                }
                layer.neuron_gradients[i] = sum * (1.0 - layer.neuron_outputs[i] * layer.neuron_outputs[i]);
            }
            calculate_hidden_gradients<index - 1>();
        }
    }

    // Updates the weights / weight deltas of the network
    template<std::size_t index = net_size - 1>
    constexpr void update_weights(void)
    {
        if constexpr (index > 0)
        {
            auto &layer = std::get<index>(layers_);
            auto &prev_layer = std::get<index - 1>(layers_);

            std::size_t layer_size_visible = layer.size() - 1;

            for(std::size_t l = 0; l < layer_size_visible; ++l)
            {
                for(std::size_t p = 0; p < prev_layer.size(); ++p)
                {
                    double old_weight = prev_layer.weight_deltas[p * layer_size_visible + l];
                    double new_weight = ETA * prev_layer.neuron_outputs[p] * layer.neuron_gradients[l] + ALPHA * old_weight;

                    prev_layer.weights[p * layer_size_visible + l] += new_weight;
                    prev_layer.weight_deltas[p * layer_size_visible + l] = new_weight;
                }
            }
            update_weights<index - 1>();
        }
    }

    // Initalizes the weights with random values
    template<std::size_t index = 0>
    constexpr void init_random_weights(void)
    {
        if constexpr(index < net_size)
        {
            auto &layer = std::get<index>(layers_);
            for(std::size_t i = 0; i < layer.w_size(); ++i)
            {
                layer.weights[i] = RNG.GetRandomDouble((i + 1) * (index + 1) + i);
            }
            init_random_weights<index + 1>();
        }
    }

public:
    // Constructor takes a parameter pack of Layers
    constexpr explicit NNet(const Layers &...layers) : layers_(layers...)
    {
        init_random_weights();
    }

    // Train the neural net with corresponding inputs and outputs N times.
    constexpr auto Train(const auto &inputs, const auto &outputs, std::size_t cycles)
    {
        for (std::size_t i = 0; i < cycles; ++i)
        {
            for (std::size_t e = 0; e < sizeof(inputs) / sizeof(inputs[0]); ++e)
            {
                forward_propagate(inputs[e]);
                back_propagate(outputs[e]);
            }
        }
    }

    // Takes an array of inputs and returns the corresponding
    // output from the neural net
    constexpr auto get(const auto &input)
    {
        // forward propagate
        forward_propagate(input);

        // Collect all outputs
        auto output_layer = std::get<std::tuple_size_v<decltype(layers_)> - 1>(layers_);
        // double output[output_layer.in] {};
        std::array<double, output_layer.size()> output{};
        for (std::size_t i = 0; i < output_layer.size(); ++i)
        {
            output[i] = output_layer.neuron_outputs[i];
        }
        return output;
    }

    constexpr auto get_layers(void) const { return layers_; }
    constexpr auto size(void) const { return net_size; }
};

#endif