#pragma once

// Function to calculate the exponential of a number
constexpr double exp(double x)
{
    double result = 1.0;
    double term = 1.0;
    const int numTerms = 20; // Number of terms in the Taylor series
    for (int i = 1; i <= numTerms; ++i)
    {
        term *= x / i;
        result += term;
    }
    return result;
}


class ActivationFunction
{
public:
    constexpr virtual double Calc(double x) = 0;
};

class Sigmoid : ActivationFunction
{
public:
    constexpr double Calc(double x) override
    {
        return 1.0 / (1.0 + exp(-x));
    }
};
