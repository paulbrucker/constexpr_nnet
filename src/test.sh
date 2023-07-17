FLAGS="-O0 -Wall -Wextra -Wshadow -pedantic"
N=100000000

echo
echo "static analyse..."
cppcheck .

echo 
echo "gcc Tests compiling..."
time g++ -fconstexpr-ops-limit=$N -std=c++23 $FLAGS -o main main.cpp

rm main

echo 
echo "clang Tests compiling..."
time clang++ -fconstexpr-steps=$N -std=c++2b $FLAGS -o main main.cpp

./main
rm main
