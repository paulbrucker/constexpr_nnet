#ifndef NNET_HPP
#define NNET_HPP

#include "Utils.hpp"
#include "Layer.hpp"
#include "Data.hpp"

#include <array>
#include <tuple>
#include <iostream>
#include <vector>
#include <string>

#include "util/TupleFunctions.hpp"

template <typename... Layers>
class NNet
{
private:
    // This tuple represents the layers in the neural network
    std::tuple<Layers...> layers_;

    double error_ = 0.0;
    double average_error_ = 0.0;
    double average_error_smoothing_ = 0.0;

    // Takes a the input set of a dataentry and forward propagates it
    constexpr void forward_propagate(const auto &input)
    {
        // Assign the inputs to the input layer
        std::get<0>(layers_).set_neuron_output(input);
        forward_propagate_entry();
    }

    // Iterates over the layer tuple and do forward propagate every layer
    template <std::size_t index = 1>
    constexpr void forward_propagate_entry(void)
    {
        if constexpr (index < std::tuple_size_v<decltype(layers_)>)
        {
            auto prevLayer = std::get<index - 1>(layers_);
            std::get<index>(layers_).layer_forward_propagate(prevLayer);
            forward_propagate_entry<index + 1>();
        }
    }

    // Takes a tuple of Data Entries and
    // iterates over it -> Forward and backward prop
    template <std::size_t entries_index = 0, typename Entries>
    constexpr void train_dataset(const Entries &entries)
    {
        if constexpr (entries_index < std::tuple_size_v<Entries>)
        {
            // Get the entry at index from the dataset and
            // feed forward & back propagate
            auto entry = std::get<entries_index>(entries);
            forward_propagate(entry.GetInputs());
            back_propagate(entry.GetOutputs());

            train_dataset<entries_index + 1>(entries);
        }
    }

    // Backwards propagation algorithm implementation
    constexpr void back_propagate(const auto &output)
    {
        auto output_layer = std::get<std::tuple_size_v<decltype(layers_)> - 1>(layers_);
        auto output_neurons = output_layer.GetNeurons();

        // calculate the network error
        // TODO: Check size - 1?
        for (std::size_t i = 0; i < output_neurons.size(); ++i)
        {
            // TODO: calculate output gradients
            // std::get<std::tuple_size_v<decltype(layer_)> - 1>(layers_).set(target_output[i]);

            double tmp_err = output[i] - output_neurons[i].get_output();
            error_ += tmp_err * tmp_err;
        }

        error_ /= output_neurons.size();
        error_ = sqr(error_);

        average_error_ = (average_error_ * average_error_smoothing_ + error_) / (average_error_smoothing_ + 1.0f);

        // calculate the output gradients

        // do back propagate
    }

public:
   
    // Constructor takes a parameter pack of Layers
    constexpr NNet(const Layers &...layers) : layers_(layers...)
    {
    }

    // TODO: implement feed forward & back prop
    constexpr auto Train(const auto &data, std::size_t cycles)
    {
        // Check that the input and output size match these of the neural network
        if (std::get<0>(data.GetEntries()).GetInputs().size() != std::get<0>(layers_).GetNumberOfNeurons() || std::get<0>(data.GetEntries()).GetOutputs().size() != std::get<sizeof...(Layers) - 1>(layers_).GetNumberOfNeurons())
            throw std::exception();

        for (std::size_t i = 0; i < cycles; ++i)
        {
            train_dataset(data.GetEntries());
        }
    }

    // TODO: Use the neural net
    // constexpr auto get(const auto &input)
    // {
    //     return Output{};
    // }

    // Returns the values of all neurons in the net
    constexpr auto GetWeights(void)
    {
        return Tuple::GetNeurons(layers_, std::make_index_sequence<sizeof...(Layers)>{});
    }
};

#endif