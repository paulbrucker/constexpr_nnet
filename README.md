# constexpr_nnet
neural net that can be trained at compile time

My student playground project for trying out some C++ features like `constexpr`, variadic templates, template metaprogramming and macros for generating random numbers at compile time.

# example
```
constexpr auto make_constexpr_nnet(void)
{
    // Instantiate the network
    NNet net = NNet(Layer<2, 3>(Tanh()), Layer<3, 1>(Tanh()), Layer<1, 1>(Tanh()));
    
    // Define the inputs and target outputs
    double inputs[4][2] = {{-1.0, -1.0}, {-1.0, 1.0}, {1.0, -1.0}, {1.0, 1.0}};
    double outputs[4][1] = {{-1.0}, {1.0}, {1.0}, {-1.0}};

    // Train the net for 1000 cycles.
    net.Train(inputs, outputs, 1000);

    return net;
}```