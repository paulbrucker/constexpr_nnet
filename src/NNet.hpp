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


template <typename... Layers>
class NNet
{
private:
    std::tuple<Layers...> layers_{};
    static constexpr Random RNG {};

public:
    constexpr NNet(Layers... layers)
    {
        Random r;
        // layers_ = {layers...};
    }
    void Print(void) const
    {
        Tuple::PrintEach(layers_, std::make_index_sequence<sizeof...(Layers)>{});
    }

    constexpr auto GetNeurons(void)
    {
        return Tuple::GetNeurons(layers_, std::make_index_sequence<sizeof...(Layers)>{});
    }
};