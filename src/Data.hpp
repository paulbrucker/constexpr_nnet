#include <array>

template<std::size_t NumInputs, std::size_t NumOutputs>
class DataEntry
{
private:
    std::array<double, NumInputs> inputs_;
    std::array<double, NumOutputs> outputs_;

public:
    constexpr DataEntry(const std::array<double, NumInputs>& inputs, const std::array<double, NumOutputs>& outputs)
        : inputs_(inputs), outputs_(outputs) {}

    constexpr auto GetInputs() const { return inputs_; }
    constexpr auto GetOutputs() const { return outputs_; }
};

template <typename... Entries>
class DataSet
{
private:
    std::tuple<Entries...> entries_;

public:
    constexpr DataSet(const Entries&... entries) : entries_(entries...) {}

    constexpr auto GetEntriesAsArray() const 
    { 
        return Tuple::to_array(entries_);
    }
    constexpr auto GetEntries(void) const { return entries_;}
    constexpr auto GetEntriesSize(void) const { return sizeof...(Entries);}
};
