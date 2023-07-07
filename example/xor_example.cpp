#include "../src/NNet.hpp"

int main()
{
    /*
    constexpr DataSet set = DataSet(
        {1.0, 1.0, 0.0},
        
    );
    */

    static constexpr NNet net = NNet(Layer<2, 3>(), Layer<3, 1>(), Layer<1, 0>());
    net.Print();
    return 0;
}
