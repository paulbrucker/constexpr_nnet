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

// Sigmoid function implementation
constexpr double sigmoid(int x)
{
    return 1.0 / (1.0 + exp(-x));
}

typedef double (*Sigmoid)(double);

