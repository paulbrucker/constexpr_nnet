FLAGS="-Wall -Wextra -Wshadow -pedantic"
N=100000000

rm test/test

# Static analyse
echo
echo "static analyse..."
cppcheck --enable=all --suppress=missingIncludeSystem .




echo
echo "clang compiling..."
time clang++ -fconstexpr-steps=$N -std=c++2b $FLAGS -o test/test test/static_tests.cpp
rm test/test
echo
echo "gcc compiling..."
time g++ -fconstexpr-ops-limit=$N -std=c++23 $FLAGS -o test/test test/static_tests.cpp

echo
echo "Tests running..."
./test/test

echo "Tests removing..."
rm test/test