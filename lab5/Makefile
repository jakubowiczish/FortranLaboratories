compile:
	F77=ifort F90=ifort CC=icc f2py3 -c -m matmull_wrapper matmull_wrapper.F90

test:
	python3 test.py

all:
	make compile
	make test

clean:
	rm -f *.so
	rm -f *mod