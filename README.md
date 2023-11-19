# CMPE220_HackAssembler

# Hack Assembler

## Introduction
This project is a Hack Assembler written in C++, designed as part of the [nand2tetris](http://www.nand2tetris.org/) course. The assembler translates Hack assembly language into binary machine code executable by the Hack computer platform.
This was made as a course project for CMPE 220 - System Software

## System Requirements
- **Operating System**: Windows, macOS, or Linux
- **Compiler**: GCC (GNU Compiler Collection) or any C++17 compliant compiler
- **Make**: For automated build (optional)
- **Debugger**: GDB or any compatible debugger (optional for development)

## Compilation and Running

To compile and run the assembler, navigate to the project directory and run the following command:
```bash
make run File=<assembly program.asm>
```

This will produce a .hack file with the same name as the input file in the same directory, containing the translated machine code.

Translates Hack assembly code into binary machine code.
Handles labels and variable symbols.
Provides error messages with line numbers for easier debugging of assembly code.
Supports comments and whitespace in assembly files for better readability.

##Project Structure

HackAssembler/
│
├── src/
│ ├── Assembler.cpp
│ ├── Code.cpp
│ ├── Parser.cpp
│ ├── TableLookup.cpp
│ └── Utility.cpp
│
├── include/
│ ├── Assembler.h
│ ├── Code.h
│ ├── Parser.h
│ ├── TableLookup.h
│ └── Utility.h
│
├── Programs/
│ └── Max.asm
│
├── Makefile
└── README.md
