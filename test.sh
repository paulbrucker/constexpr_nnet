echo "Tests compiling..." 
g++ -std=c++23 -Wall -Wextra -o test/test test/Tests.cpp 
echo "Tests running..." 
./test/test 
echo "Test removing..."
rm test/test