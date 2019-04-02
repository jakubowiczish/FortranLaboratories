program main
    integer, dimension(100) :: tab1, tab2, tab3
    do i = 1, 100
        tab1(i) = i
        tab2(i) = 0
        tab3(i) = 0
    end do
    call s(tab1, tab2, tab3)
    write(*,*) tab3

    contains
        subroutine s(tab1, tab2, tab3)
            integer, intent(in), dimension(-100:-1) :: tab1, tab2
            integer, intent(out), dimension(-100:-1) :: tab3
                write (*,*) tab3
                write (*,*)
                tab3 = tab1 + tab2
        end subroutine
end program main