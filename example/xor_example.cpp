#include "../src/NNet.hpp"
#include <iostream>

int main()
{

    static constexpr NNet<Sigmoid, Sigmoid, Sigmoid> net(2, 3, 1);
    for(auto layer : net.GetNeurons())
        for(auto neuron : layer)
            std::cout << neuron << std::endl;
    return 0;
}
