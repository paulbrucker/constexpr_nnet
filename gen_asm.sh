rm disassembly/gcc.s
echo "Generating disassemblies"
g++ -std=c++23 -S -o disassembly/gcc.s test/static_tests.cpp