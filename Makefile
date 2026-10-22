CXX = g++
CXXFLAGS = -std=c++20 -Wall -Wextra -Wpedantic -Wshadow -Wconversion -Werror
CXXFLAGS += -MMD -MP
SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)
DEPS = $(SRCS:.cpp=.d)

week1: $(OBJS)
	$(CXX) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f week1 $(OBJS) $(DEPS)

-include $(DEPS)
