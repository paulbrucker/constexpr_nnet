#pragma once
#include <type_traits>
#include <tuple>
#include <iostream>

namespace Tuple
{

    // PRINTING THE NEURAL NET ( NOT CONSTEXPR OBVIOUSLY)
    template<typename T>
    void PrintLayer(const T& t)
    {
        t.Print();
    }

    template <typename Tuple, std::size_t... Is>
    auto PrintEach(const Tuple &t, std::index_sequence<Is...>)
    {
        (PrintLayer(std::get<Is>(t)), ...);
    }
    //////////////////////////////////////////////////////
    // Get Neurons

    template<typename T>
    constexpr auto GetNeuronsHelper(const T& t)
    {
        return t.GetNeurons();
    }

    template <typename Tuple, std::size_t... Is>
    constexpr auto GetNeurons(const Tuple &t, std::index_sequence<Is...>)
    {
        return (GetNeuronsHelper(std::get<Is>(t)), ...);
    }

    //////////////////////////////////////////////////////
    //////////////////////////////////////////////////////

}