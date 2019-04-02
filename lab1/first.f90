program main
    implicit none
    real :: a, b 
    complex :: c
    read *, a
    read *, b
    c = a + b
    write(*,*) c
end program main