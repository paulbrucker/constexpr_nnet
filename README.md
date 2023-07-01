# constexpr_nnet
neural net that can be trained at compile time

Features:
CTVector - compile time array wrapper -> define a max size and use it analogue to std::vector.
CTRandom - pseudo random double generator for initializing the weights -> __TIME__ and __COUNTER__ macros

