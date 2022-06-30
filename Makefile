SRC_FILES := $(wildcard src/*.hs)
TARGET := spam

all: build run

build: $(SRC_FILES)
	ghc $(SRC_FILES) -o bin/$(TARGET) -odir bin -hidir bin

run: 
	bin/$(TARGET).exe

clean: 
	-del bin\*