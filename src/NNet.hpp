#pragma once

#include "Utils.hpp"
#include "Config.hpp"
#include "Layer.hpp"

#include <array>
#include <tuple>
#include <iostream>
#include <vector>
#include <string>

#include "util/TupleFunctions.hpp"

template<std::size_t NumData, std::size_t NumValues>
using Data = std::array<std::array<double, NumValues>, NumData>;

template <typename... Layers>
class NNet
{
private:
    std::tuple<Layers...> layers_;


public:
    constexpr NNet(Layers... layers) : layers_(layers...) {}

    // TODO: implement feed forward & back prop
    constexpr void Train(auto &data, std::size_t cycles)
    {
        for(auto &set : data)
        {
            for(auto &entry : set)
            {
                std::cout << entry <<  " cycles: " << cycles << std::endl;
            }
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