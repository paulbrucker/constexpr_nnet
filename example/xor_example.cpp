#include "../src/NNet.hpp"

int main()
{
    static constexpr NNet net = NNet(Layer<2, 3>(), Layer<3, 1>(), Layer<1, 0>());
    net.Print();
    return 0;
}
