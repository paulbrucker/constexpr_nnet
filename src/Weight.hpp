struct Weight
{
    double weight_ = 0.0;
    double delta_ = 0.0;
    constexpr Weight() = default;
    constexpr Weight(const double w) : weight_(w) {}
};