program main
    integer :: file_size

    inquire(FILE = "test.txt", SIZE = file_size)
    
    character, allocatable, dimension(:) :: a
    
    allocate(a(file_size))
    
    open(unit = 19, file = "test.txt", position = "rewind", & 
    form = "unformatted", action = "read", status = "old", access = "sequential")

    read(unit = 19) a
    write(*, *) a
    close(19)

end program main