
#include "Config.hpp"

class Neuron
{
private:
    double weight_ = 0.0;

public:
    constexpr Neuron() = default;
    constexpr Neuron(const double w) : weight_(w){};
};