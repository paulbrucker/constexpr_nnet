#include <array>
#include <tuple>

// ARRAY OF INTS TO A TUPLE OF INTS---------------------------------------------------------------------------------

template <std::size_t... I>
constexpr auto arrayToIntTupleHelper(const std::array<std::size_t, sizeof...(I)> &arr, std::index_sequence<I...>)
{
    return std::make_tuple(arr[I]...);
}

template <std::size_t N>
constexpr auto arrayToIntTuple(const std::array<std::size_t, N> &arr)
{
    return arrayToIntTupleHelper(arr, std::make_index_sequence<N>());
}

//--------------------------------------------------------------------------------------------------------------------

// ARRAY OF INTS TO A TUPLE OF INTS---------------------------------------------------------------------------------


template <std::size_t size, std::size_t... Sizes>
constexpr auto array_to_tuple_helper(const std::array<std::size_t, size>& arr, std::index_sequence<Sizes...>) {
    return std::make_tuple(static_cast<double>(arr[Sizes])...);
}

template <std::size_t size>
constexpr auto array_to_tuple(const std::array<std::size_t, size>& arr) {
    return array_to_tuple_helper(arr, std::make_index_sequence<size>());
}

//--------------------------------------------------------------------------------------------------------------------


