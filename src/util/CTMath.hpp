#pragma once

// Takes a double X and optional a double Epsilon.
// Returns the square root of x with the accuracy of epsilon
constexpr double sqr(double x, double epsilon = 0.0000001)
{   
    double guess = x;
    double prev_guess = 0.0;
    while(prev_guess != guess && guess * guess - x > epsilon)
    {
        prev_guess = guess;
        guess = 0.5 * (guess + x / guess);
    }
    return guess;
}


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
