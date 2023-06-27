#include "util/CTVector.h"
#include "Config.hpp"

template <std::size_t In, std::size_t Out>
class Layer
{
private:
    CTVector<CTVector<double, In>, Out> weights_;
    CTVector<double, Out> biases_;

public:
    constexpr Layer()
    {
        weights_(CTVector<double, In>(0.0));
        biases_(0.0);
    }

    constexpr CTVector<double, Out> CalculateOutputs(const CTVector<double, In> &inputs)
    {
        CTVector<double, Out> weightedInputs(0.0);

        for (std::size_t nodeOut = 0; nodeOut < Out; ++nodeOut)
        {
            double weightedInput = biases_[nodeOut];
            for (std::size_t nodeIn = 0; nodeIn < In; ++nodeIn)
            {
                weightedInput += inputs[nodeIn] * weights_[nodein][nodeOut];
            }
            weightedInputs[nodeOut] = weightedInput;
        }
        return weightedInputs;
    }
};