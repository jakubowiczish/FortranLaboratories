GFORTRAN=gfortran -std=f2008 -cpp -Wall -O0
SRC_MODULE=mycomplex.f90
TEST=mycomplex_test.f90


build: mycomplex.f90 mycomplex_test.f90
	$(GFORTRAN) $(SRC_MODULE) $(TEST) -o test

run: mycomplex_test.f90
	make build
	./test