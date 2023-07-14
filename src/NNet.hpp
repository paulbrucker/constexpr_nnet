#pragma once

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

    // Takes a tuple of Data Entries and
    // feeds every entry into the net
    template <std::size_t entries_index = 0, typename Entries>
    constexpr void forward_propagate(const Entries &entries)
    {
        if constexpr (entries_index < std::tuple_size_v<Entries>)
        {
            auto entry = std::get<entries_index>(entries);

            // Assign input values to the input neurons outputs
            if constexpr (entries_index == 0)
                std::get<0>(layers_).set_neuron_values(entry.GetInputs());

            // For all other layers do this
            forward_propagate_entry();
            forward_propagate<entries_index + 1>(entries);
        }
    }

    // Takes a DataEntry and feeds the net
    template <std::size_t index = 1>
    constexpr auto forward_propagate_entry(void)
    {
        if constexpr (index < std::tuple_size_v<decltype(layers_)>)
        {
            auto prevLayer = std::get<index - 1>(layers_);
            std::get<index>(layers_).layer_forward_propagate(prevLayer);
            forward_propagate_entry<index + 1>();
        }
    }

public:
    // Constructor takes a parameter pack of Layers
    constexpr NNet(const Layers &...layers) : layers_(layers...)
    {
    }

    // TODO: implement feed forward & back prop
    constexpr void Train(const auto &data, std::size_t cycles)
    {
        // Check that the input and output size match these of the neural network
        if (std::get<0>(data.GetEntries()).GetInputs().size() != std::get<0>(layers_).GetNumberOfNeurons() || std::get<0>(data.GetEntries()).GetInputs().size() != std::get<sizeof...(Layers) - 1>(layers_).GetNumberOfNeurons())
            throw std::exception();

        for (std::size_t i = 0; i < cycles; ++i)
        {
            forward_propagate(data.GetEntries());
        }
    }

    // Print method for testing purposes -> to be removed
    void Print(void) const
    {
        Tuple::PrintEach(layers_, std::make_index_sequence<sizeof...(Layers)>{});
    }

    constexpr auto GetNeurons(void)
    {
        return Tuple::GetNeurons(layers_, std::make_index_sequence<sizeof...(Layers)>{});
    }
};