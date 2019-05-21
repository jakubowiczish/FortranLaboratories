program main
    real(kind = 8), codimension[*] :: pi

    real(kind = 8) :: sum = 0

    integer(kind = 4) :: n, ibeg, iend, dist
    integer(kind = 8) :: i
    
    n = 1000000
    pi = 0.d0

    ibeg = (this_image() - 1 ) * (n / num_images()) + 1
    iend = (this_image()) * (n / num_images())
    
    do i = ibeg, iend
        pi = pi + ((-1.d0) ** (i + 1)) / (2 * i - 1)
    end do
    
     pi = pi * 4.d0

    write (*, *) pi, this_image(), ibeg, iend

    syncall()

    if(this_image() == 1) then
        do k = 1, num_images()
            sum = sum + pi[k]
        end do

        write(*, *) pi[this_image()]
    endif
end program