#pragma once
#include <type_traits>
#include <tuple>
#include <iostream>

namespace Tuple
{

    // PRINTING THE NEURAL NET ( NOT CONSTEXPR OBVIOUSLY)
    template <typename T>
    void PrintLayer(const T &t)
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
    // TODO: FORWARD PROPAGATION

    // Hilfsfunktion, um die Funktion für jedes Element aufzurufen
    template <std::size_t... Is>
    constexpr auto make_index_sequence_1based(std::index_sequence<Is...>)
    {
        return std::index_sequence<(Is + 1)...>{};
    }

    template <typename Func, typename... Args, std::size_t... Is>
    constexpr void callFunctionForTupleElements(const std::tuple<Args...> &tuple, Func &&func, std::index_sequence<Is...>)
    {
        (func(std::get<Is>(tuple), std::get<Is - 1>(tuple)), ...);
    }

    // Spezialisierte Funktion zum Aufruf von SetOutputValue auf jedem Element des Tuples
    template <typename... Args>
    constexpr void ForwardProp(const std::tuple<Args...> &tuple)
    {
        constexpr std::size_t tupleSize = sizeof...(Args);

        auto setOutputValueFunc = [](auto &current, const auto &previous)
        {
            current.forwardProp(previous);
        };
        using seq = decltype(make_index_sequence_1based(std::make_index_sequence<tupleSize>{}));
        callFunctionForTupleElements(tuple, setOutputValueFunc, seq{});
    }

    //////////////////////////////////////////////////////
    // TUPLE TO ARRAY HELPER
    template <int... Indices>
    struct indices
    {
        using next = indices<Indices..., sizeof...(Indices)>;
    };

    template <int Size>
    struct build_indices
    {
        using type = typename build_indices<Size - 1>::type::next;
    };

    template <>
    struct build_indices<0>
    {
        using type = indices<>;
    };

    template <typename T>
    using Bare = typename std::remove_cv<typename std::remove_reference<T>::type>::type;

    template <typename Tuple>
    constexpr
        typename build_indices<std::tuple_size<Bare<Tuple>>::value>::type
        make_indices()
    {
        return {};
    }

    template <typename Tuple, int... Indices>
    std::array<
        typename std::tuple_element<0, Bare<Tuple>>::type,
        std::tuple_size<Bare<Tuple>>::value>
    to_array(Tuple &&tuple, indices<Indices...>)
    {
        using std::get;
        return {{get<Indices>(std::forward<Tuple>(tuple))...}};
    }

    template <typename Tuple>
    auto to_array(Tuple &&tuple)
        -> decltype(to_array(std::declval<Tuple>(), make_indices<Tuple>()))
    {
        return to_array(std::forward<Tuple>(tuple), make_indices<Tuple>());
    }
}