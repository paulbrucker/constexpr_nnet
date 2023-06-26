#include "util/CTVector.h"

#include <cmath>

class Neuron
{
private:
    double eta = 0.15;
    double alpha = 0.5;
    constexpr double activationFunction(double x)
    {
        return tanh(x);
    }
    
};