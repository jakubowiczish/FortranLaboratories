module triangle_module
    type, public :: triangle
        integer(kind = 4) :: x1, y1, x2, y2, x3, y3
    contains
        procedure, public :: area
    end type

    contains

    function triangle_area(t) result (res)
        type(triangle), intent(in) :: t
        real :: res, a, b, c, p

        a = sqrt((t%x1 - t%x2)**2 + (t%y1 - t%y2)**2)
        b = sqrt((t%x2 - t%x3)**2 + (t%y2 - t%y3)**2)
        c = sqrt((t%x1 - t%x3)**2 + (t%y1 - t%y3)**2)

        p = (a + b + c) / 2

        res = sqrt(p * (p - a) * (p - b) * (p - c))
    end function

end module