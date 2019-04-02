module mymath_alloc
implicit none
    integer, parameter :: iSize = 100
    integer, private :: argc
    character, public, protected, allocatable :: argv(:,:)
    public :: swap, initialize
    private swap_int, swap_real, swap_complex, swap_logical
    interface swap
        procedure swap_int, swap_real, swap_complex, swap_logical
    end interface

    contains
    elemental subroutine swap_int(x, y)
        integer, intent(inout) :: x, y
        integer :: tmp
        tmp = x
        x = y
        y = tmp
    end subroutine

    elemental subroutine swap_real(x, y)
        real, intent(inout) :: x, y
        real :: tmp
        tmp = x
        x = y
        y = tmp
    end subroutine

    elemental subroutine swap_complex(x, y)
        complex, intent(inout) :: x, y
        complex :: tmp
        tmp = x
        x = y
        y = tmp
    end subroutine

    elemental subroutine swap_logical(x, y)
        logical, intent(inout) :: x, y
        logical :: tmp
        tmp = x
        x = y
        y = tmp
    end subroutine


    subroutine initialize()
        integer :: i, length, status
        ! integer :: x ! doing the setter
        argc = command_argument_count()
        allocate(argv(argc, iSize))

        do i = 1, argc
            call get_command_argument(i, argv(i,:), length, status)
        end do

    end subroutine

end module mymath_alloc