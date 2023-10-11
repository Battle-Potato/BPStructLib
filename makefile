CC=g++
EXE_FILE=testfile

all: $(EXE_FILE)

$(EXE_FILE): DynamicArray.o DynamicArray.h main.cpp
	$(CC) -g DynamicArray.o main.cpp -o $(EXE_FILE)

DynamicArray.o: DynamicArray.h DynamicArray.cpp
	$(CC) -c DynamicArray.cpp

clean:
	rm -f *.o $(EXE_FILE)
