# Compiler Lab Work

This workspace contains independent Flex exercises and one Bison parser.

## Layout

Each exercise keeps handwritten sources in `src/` and generated C files and executables in `build/`.

```text
Compiler-LabWork/
├── Flex_Learning/<exercise>/
│   ├── src/<exercise>.l
│   └── build/
├── Bison/Bison-Addition-Parser/
│   ├── src/bison.y
│   ├── src/lex.l
│   └── build/
├── Makefile
└── README.md
```

## Build everything

From this directory:

```sh
make
```

Build only Flex or Bison projects with `make flex` or `make bison`.

## Run programs

Executables are created inside the corresponding `build/` directory. For example:

```sh
printf '2+1\n' | ./Bison/Bison-Addition-Parser/build/bison-addition-parser
printf '12 3.5\n' | ./Flex_Learning/number-type-classification/build/number-type-classification
```

Run `make clean` to remove generated files and executables while keeping all handwritten source files.# Compiler-LabWork
# Compiler-LabWork
# Compiler-Lab-Work
