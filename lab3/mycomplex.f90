module mycomplex_module
    implicit none
    type, public :: mycomplex
        real(kind = 4) :: re, im
    end type mycomplex

    public :: operator(+)
    private :: add
    interface operator(+)
        procedure add
    end interface

    public :: operator(-)
    private :: subtract
    interface operator(-)
        procedure subtract
    end interface

    public :: operator(*)
    private :: multiply
    interface operator(*)
        procedure multiply
    end interface

    public :: operator(/)
    private :: divide
    interface operator(/)
        procedure divide
    end interface

    public :: assignment(=)
    private :: assign
    interface assignment(=)
        procedure assign
    end interface


    contains

    function add(x, y) result (z)
       type(mycomplex), intent(in) :: x, y
       type(mycomplex) :: z

       z%re = x%re + y%re
       z%im = x%im + y%im
    end function

    function subtract(x, y) result (z)
        type(mycomplex), intent(in) :: x, y
        type(mycomplex) :: z

        z%re = x%re - y%re
        z%im = x%im - y%im
    end function

    function multiply(x, y) result(z)
        type(mycomplex), intent(in) :: x, y
        type(mycomplex) :: z

        z%re = x%re * y%re - x%im * y%im
        z%im = x%re * y%im + x%im * y%re
    end function

    function divide(x, y) result(z)
        type(mycomplex), intent(in) :: x, y
        type(mycomplex) :: z

        z%re = ( (x%re * y%re + x%im * y%im) / ((y%re * y%re) + (y%im * y%im)))
        z%im = ((x%im * y%re - x%re * y%im) / ((y%re * y%re) + (y%im * y%im)))
    end function

    subroutine assign(x, y)
        type(mycomplex), intent(out) :: x
        type(mycomplex), intent(in) :: y
        x%re = y%re
        x%im = y%im
    end subroutine
    

    
    

end module mycomplex_module