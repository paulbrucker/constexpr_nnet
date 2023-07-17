FLAGS="-Wall -Wextra -Wshadow -pedantic"
N=100000000

echo
echo "static analyse..."
cppcheck .

echo 
echo "gcc Tests compiling..."
time g++ -fconstexpr-ops-limit=$N -std=c++23 $FLAGS -o test/test test/static_tests.cpp

rm test/test

echo 
echo "clang Tests compiling..."
time clang++ -fconstexpr-steps=$N -std=c++2b $FLAGS -o test/test test/static_tests.cpp

echo 
echo "Tests running..." 
./test/test 

echo "Test removing..."
rm test/test
