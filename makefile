# Compiler and compiler flags
CXX = g++
CXXFLAGS = -std=c++17 -Iinclude -g  # Added -g flag for debugging

# Source files
SOURCES = $(wildcard src/*.cpp)

# Detect operating system
ifeq ($(OS),Windows_NT)
    # Windows settings
    EXECUTABLE = main.exe
    RM = del /Q
    FixPath = $(subst /,\,$1)
else
    # Linux/Unix settings
    EXECUTABLE = main
    RM = rm -f
    FixPath = $1
endif

# Default target
all: $(EXECUTABLE)

# Rule to create the executable
$(EXECUTABLE): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(EXECUTABLE)

# Clean target to remove generated files
clean:
	$(RM) $(call FixPath,$(EXECUTABLE))

# PHONY targets
.PHONY: all clean

# Rule to run the program with a user-provided input file
# Usage: make run FILE=Max.asm
run: $(EXECUTABLE)
	./$(call FixPath,$(EXECUTABLE)) -f $(FILE)
