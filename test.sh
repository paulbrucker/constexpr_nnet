echo "gcc Tests compiling..."
g++ -std=c++23 -Wall -Wextra -o test/test test/Tests.cpp

rm test/test

echo "clang Tests compiling..."
clang++ -std=c++2b -Wall -Wextra -o test/test test/Tests.cpp


echo "Tests running..." 
./test/test 

echo "Test removing..."
rm test/test