program main
    use mymath
implicit none
    integer :: int_array_1(10), int_array_2(10)
    real :: real_array_1(10), real_array_2(10)
    complex :: complex_array_1(10), complex_array_2(10)
    logical :: logical_array_1(10), logical_array_2(10)
    
    int_array_1 = 12
    int_array_2 = 14
    
    real_array_1 = 16
    real_array_2 = 18

    complex_array_1 = cmplx(1, 2)
    complex_array_2 = cmplx(3, 4)
    
    logical_array_1 = .TRUE.
    logical_array_2 = .FALSE.

    write(*,*) "Before swap integer: "
    write(*,*)
    write(*,*) int_array_1, int_array_2
    write(*,*)

    call swap(int_array_1, int_array_2)

    write(*,*) "After swap integer: "
    write(*,*)
    write(*,*) int_array_1, int_array_2
    write(*,*)


    write(*,*) "Before swap real: "
    write(*,*)
    write(*,*) real_array_1, real_array_2
    write(*,*)

    call swap(real_array_1, real_array_2)

    write(*,*) "After swap real: "
    write(*,*)
    write(*,*) real_array_1, real_array_2
    write(*,*)


    write(*,*) "Before swap complex: "
    write(*,*)
    write(*,*) complex_array_1, complex_array_2
    write(*,*)

    call swap(complex_array_1, complex_array_2)

    write(*,*) "After swap complex: "
    write(*,*)
    write(*,*) complex_array_1, complex_array_2
    write(*,*)

    write(*,*) "Before swap logical: "
    write(*,*)
    write(*,*) logical_array_1, logical_array_2
    write(*,*)

    call swap(logical_array_1, logical_array_2)
    
    write(*,*) "After swap logical "
    write(*,*)
    write(*,*) logical_array_1, logical_array_2
    write(*,*)

end program main
