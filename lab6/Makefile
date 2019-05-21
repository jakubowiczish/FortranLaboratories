IFORT=ifort -coarray -std08 -O0 -check bounds
SRC=pi.F90
OUT=pi

build: pi.F90
	$(IFORT) $(SRC) -o $(OUT)

all: pi.F90
	make build
	./$(OUT)