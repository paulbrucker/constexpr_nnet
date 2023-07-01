#include "util/CTMath.hpp"
#include "util/CTRandom.hpp"
#include "util/CTVector.h"
#include "Config.hpp"
#include "util/CTArrayToSequence.hpp"

#include <array>
#include <tuple>
#include <iostream>
#include <vector>
#include <string>

template <typename T>
void printElem(const T& x) {
    std::cout << "LAYER" << std::endl;
    x.print();
};

template <typename TupleT, std::size_t... Is>
void printTupleManual(const TupleT& tp, std::index_sequence<Is...>) {
    (printElem(std::get<Is>(tp)), ...);
}


template<std::size_t NeuronNum, std::size_t Outputs>
class Layer
{
private:
    std::array<double, NeuronNum> neurons_ {};
    std::array<double, NeuronNum * Outputs> weights_ {};
    Random random;
public:
    constexpr Layer()
    {
        InitializeValues();
    }

    constexpr void InitializeValues()
    {
        for(auto & n : neurons_) n = random.GetRandomDouble();
        for(auto & w : weights_) w = random.GetRandomDouble();
    }
    constexpr auto getNeurons(void) const { return neurons_;}
    constexpr auto getWeights(void) const { return weights_;}

    void print(void) const
    {
        std::cout << neurons_.size() << " NEURONS:" << std::endl;
        for(auto &n: neurons_) 
            std::cout << n << std::endl;

        std::cout << weights_.size() << " WEIGHTS:" << std::endl;
        for(auto &n: weights_) 
            std::cout << n << std::endl;
    }
};

template<typename... Layers>
class NNet
{
private:
    std::tuple<Layers...> layers_ {};
public:
    constexpr NNet(Layers... layers)
    {
        Random r;
        //layers_ = {layers...};
        

        
        
    }
    void print(void) const 
    {
        for(int i = 0; i < sizeof...(Layers); ++i)
            printTupleManual(layers_, std::index_sequence<i>{});
    }
};

int main()
{
    static constexpr NNet net = NNet(Layer<2, 3>(), Layer<3, 1>(), Layer<1,0>());
    net.print();
    return 0;
}