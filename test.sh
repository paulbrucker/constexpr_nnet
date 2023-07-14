echo "gcc Tests compiling..."
time g++ -std=c++23 -ftemplate-depth=2000 -Wall -Wextra -o test/test test/Tests.cpp

rm test/test

echo "clang Tests compiling..."
time clang++ -std=c++2b -ftemplate-depth=2000 -Wall -Wextra -o test/test test/Tests.cpp

echo "Tests running..." 
./test/test 

echo "Test removing..."
rm test/test
