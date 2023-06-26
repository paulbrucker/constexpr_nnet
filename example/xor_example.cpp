#include "../src/Net.h"
#include <iostream>

#define MAX_HEIGHT 6

template <typename... Topology>
class Net
{
private:
    CTVector<CTVector<double, MAX_HEIGHT>, sizeof...(Topology) - 1> weights_;

public:
    constexpr Net(Topology... topology)
    {
        // init weights
        weights_ = CTVector(CTVector<double, MAX_HEIGHT>(0.0));

        std::cout << "weights size = " << weights_.max_size() << std::endl;
        std::cout << "weights[#] size = " << weights_[0].max_size() << std::endl;

        CTVector<std::size_t, sizeof...(topology)> tmp = {topology...};
        int numLayers = sizeof...(topology);

        for (int i = 1; i < numLayers; ++i)
        {
            int prevLayerSize = tmp[i - 1] * tmp[i];
            int currLayerSize = tmp[i];

            // Init some random values
            // std::random_device rd;
            // std::mt19937 gen(rd());
            // std::normal_distribution<double> dist(0.0, 1.0);

            for (int j = 0; j < currLayerSize; ++j)
            {
                for (int k = 0; k < prevLayerSize; ++k)
                {
                    double weight = 0.0;
                    // static_assert((j * prevLayerSize + k) < MAX_HEIGHT && i < tmp.size());
                    try {
                     weights_[i][j * prevLayerSize] = weight;

                    } catch (std::exception e) {
                        std::cout << "out of range at [" << i << "][" << j * prevLayerSize << "]\n"; 
                    }
                    
                }
            }
        }
    }

    constexpr auto GetWeights(void) { return weights_; }
};

int main()
{
    Net net(2, 3, 1);
    auto w = net.GetWeights();
    std::cout << w.max_size() << std::endl;
    for(auto weight: w)
    {
        for(auto weight2 : weight)
        {
            std::cout << weight2 << std::endl;
        }
    }
}
