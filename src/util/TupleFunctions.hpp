#pragma once
#include <type_traits>
#include <tuple>
#include <iostream>

namespace Tuple
{

    //////////////////////////////////////////////////////
    // Get Neurons

    template <typename T>
    constexpr auto GetNeuronsHelper(const T &t)
    {
        return t.GetWeights();
    }

    template <typename Tuple, std::size_t... Is>
    constexpr auto GetNeurons(const Tuple &t, std::index_sequence<Is...>)
    {
        return (GetNeuronsHelper(std::get<Is>(t)), ...);
    }

    //////////////////////////////////////////////////////

}
