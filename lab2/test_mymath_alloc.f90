program main
    use mymath_alloc
implicit none
    ! integer, parameter :: iSize = 10
    integer :: int_array_1(iSize), int_array_2(iSize)
    real :: real_array_1(iSize), real_array_2(iSize)
    complex :: complex_array_1(iSize), complex_array_2(iSize)
    logical :: logical_array_1(iSize), logical_array_2(iSize)
    
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

    call initialize()


end program main
