program main
    use mycomplex_module

implicit none
    type(mycomplex) :: a, b, c, d, e, f, g

    a%re = 1
    a%im = 3

    b%re = 2
    b%im = 4

    c = a + b

    d = a - b

    e = a * b

    f = a / b

    g = a

    write(*,*) "a"    
    write(*,*) a
    write(*,*) "complex a"
    write(*,*) cmplx(1, 3)
    write(*,*) "b"
    write(*,*) b
    write(*,*) "complex b"
    write(*,*) cmplx(2, 4)



    write(*,*) c
    write(*,*) cmplx(1, 3) + cmplx(2, 4)
    write(*,*) d
    write(*,*) cmplx(1, 3) - cmplx(2, 4)
    write(*,*) e
    write(*,*) cmplx(1, 3) * cmplx(2, 4)
    write(*,*) f
    write(*,*) cmplx(1, 3) / cmplx(2, 4)
    write(*,*) g



end program main
