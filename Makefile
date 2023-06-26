CC := g++
FLAGS := -std=c++20 -Wall -Wextra

all:
	$(CC) $(FLAGS) -o bin/xor_example example/xor_example.cpp

run: 
	./bin/xor_example

clean:
	rm /bin/xor_example