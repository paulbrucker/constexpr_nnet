#include "../src/nnet.hpp"
#include <iostream>

template <std::size_t index = 0, typename Net>
auto print(const Net &net)
{
    if constexpr (index < 3)
    {
        auto l = std::get<index>(net);
        std::cout << "###### LAYER " << index + 1 << " #######\n";
        for (std::size_t i = 0; i < l.size() - 1; i++)
        {
            std::cout << "neuron_output: " << l.neuron_outputs[i] << " - "
                      << "neuron_gradients: " << l.neuron_gradients[i] << "\n";
            for (std::size_t k = 0; k < l.next_size(); k++)
            {
                std::cout << "weight: " << l.weights[i * l.next_size() + k] << " - "
                          << "weight_deltas: " << l.weight_deltas[i * l.next_size() + k] << "\n";
            }

            std::cout << "\n";
        }
        print<index + 1>(net);
    }
}

constexpr bool math_test(void)
{
    if (cexp(2.0) < 7.3 || cexp(2.0) > 7.4)
        return false;
    if (cexp(-2.0) < 0.13 || cexp(-2.0) > 0.14)
        return false;
    if (Sigmoid().Calc(0.5) > 0.63 || Sigmoid().Calc(0.5) < 0.62)
        return false;
    if (Tanh().Calc(2.5) > 0.99 || Tanh().Calc(2.5) < 0.97)
        return false;

    if (sqr(49.0) > 7.05 || sqr(49.0) < 6.95)
        return false;
    return true;
}

constexpr bool contains_twice(const auto &arr)
{
    auto size = sizeof(arr) / sizeof(arr[0]);
    for (std::size_t i = 0; i < size - 1; ++i)
    {
        for (std::size_t k = 0; k < size; ++k)
        {
            if (i != k)
            {
                if (arr[i] == arr[k])
                    return true;
            }
        }
    }
    return false;
}

template <std::size_t index = 0, typename Tuple>
constexpr bool random_test_helper(const Tuple &t)
{
    if constexpr (index < 3)
    {
        auto layer = std::get<index>(t);
        if (contains_twice(layer.weights))
            return false;
        random_test_helper<index + 1>(t);
    }
    return true;
}

constexpr bool random_test(void)
{
    NNet net = NNet(Layer<2, 3>(), Layer<3, 1>(), Layer<1, 1>());
    auto l = net.get_layers();
    return random_test_helper(l);
}

constexpr auto get_trained_net(void)
{
    NNet net = NNet(Layer<2, 3>(), Layer<3, 1>(), Layer<1, 1>());

    double inputs[4][2] = {{-1.0, -1.0}, {-1.0, 1.0}, {1.0, -1.0}, {1.0, 1.0}};
    double outputs[4][1] = {{-1.0}, {1.0}, {1.0}, {-1.0}};
    net.Train(inputs, outputs, 1000);
    return net;
}

constexpr bool net_train_test(void)
{
    NNet net = NNet(Layer<2, 3>(Tanh()), Layer<3, 1>(Tanh()), Layer<1, 1>(Tanh()));
    double inputs[4][2] = {{-1.0, -1.0}, {-1.0, 1.0}, {1.0, -1.0}, {1.0, 1.0}};
    double outputs[4][1] = {{-1.0}, {1.0}, {1.0}, {-1.0}};
    net.Train(inputs, outputs, 1000);

    auto r1 = net.get(inputs[0])[0];
    if (r1 > -0.9 || r1 < -1.0)
        return false;

    auto r2 = net.get(inputs[1])[0];
    if (r2 < 0.9 || r2 > 1.0)
        return false;

    auto r3 = net.get(inputs[2])[0];
    if (r3 < 0.9 || r3 > 1.0)
        return false;

    auto r4 = net.get(inputs[3])[0];
    if (r4 > -0.9 || r4 < -1.0)
        return false;

    return true;
}

int main()
{
    static_assert(math_test());
    static_assert(random_test());
    static_assert(net_train_test());

    static constexpr auto net = get_trained_net();

    // auto net = net_init_test();

    print(net.get_layers());

    // Make mutable copy
    auto cpy = net;
    double test_inputs[2] = {1.0, 1.0};
    auto res = cpy.get(test_inputs);
    std::cout << res[0] << "\n";
    return 0;
}