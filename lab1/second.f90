program main
    integer, parameter :: iSize = 10000
    integer :: array(iSize)
    do i = 1,10
        do j = 1,iSize
            do k = 1,iSize
                array(k) = i + j + k
            end do
        end do     
    end do
end program main