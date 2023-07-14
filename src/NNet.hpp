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

// This represents the training data
// template<std::size_t NumData, std::size_t NumValues>
// using Data = std::array<std::array<double, NumValues>, NumData>;

template <typename... Layers>
class NNet
{
private:
    std::tuple<Layers...> layers_;

    double error_ = 0.0;
    double average_error_ = 0.0;
    double average_error_smoothing_ = 0.0;

    // Takes a tuple of Data Entries and
    // feeds every entry into the net
    template <std::size_t entries_index = 0, typename Entries>
    constexpr void feed_entries(const Entries &entries)
    {
        if constexpr (entries_index < std::tuple_size_v<Entries>)
        {
            auto entry = std::get<entries_index>(entries);

            // FORWARD PROPAGATION
            // Set input values to the first layer
            std::get<0>(layers_).set_neuron_output(entry.GetInputs());

            // Forward propagate these inputs
            forward_propagate_entry();

            // BACKWARD PROPAGATION
            auto output_layer = std::get<std::tuple_size_v<decltype(layers_)> - 1>(layers_);
            auto output_neurons = output_layer.GetNeurons();
            auto target_output = entry.GetOutputs();
            
            // calculate the network error
            // TODO: Check size - 1?
            for(std::size_t i = 0; i < output_neurons.size(); ++i)
            {
                // TODO: calculate output gradients
                //std::get<std::tuple_size_v<decltype(layer_)> - 1>(layers_).set(target_output[i]);

                double tmp_err = target_output[i] - output_neurons[i].get_output();
                error_ += tmp_err * tmp_err;
            }

            error_ /= output_neurons.size();
            error_ = sqr(error_);

            average_error_ =  (average_error_ * average_error_smoothing_ + error_) / (average_error_smoothing_ + 1.0f);

            // calculate the output gradients
   


            // do back propagate
            feed_entries<entries_index + 1>(entries);
        }
    }

    // Takes a DataEntry and feeds the net
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

    // template <std::size_t index = std::tuple_size_v(layers_) - 1, typename Entries>
    // constexpr void back_propagate(const Entries &entries)
    // {
    //     // calculate error
    //     auto output_layer = std::get<std::tuple_size_v<decltype(layers_)> - 1>(layers_);
    //     error =

    //         if constexpr (index >= 0)
    //     {
    //     }
    // }

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
            feed_entries(data.GetEntries());
        }
    }

    // Print method for testing purposes -> to be removed
    void Print(void) const
    {
        Tuple::PrintEach(layers_, std::make_index_sequence<sizeof...(Layers)>{});
    }

    // Returns the values of all neurons in the net
    constexpr auto GetWeights(void)
    {
        return Tuple::GetNeurons(layers_, std::make_index_sequence<sizeof...(Layers)>{});
    }
};

#endif