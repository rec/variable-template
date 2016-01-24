all: test test-unity

test: test.cpp test.h test.cpp
	$(CXX) --std=c++14 test2.cpp test.cpp -o test

test-unity: test.cpp test.h test.cpp test-unity.cpp
	$(CXX) --std=c++14 test-unity.cpp -o test-unity && ./test-unity

clean:
	rm test test-unity
