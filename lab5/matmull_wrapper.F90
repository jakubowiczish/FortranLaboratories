!----------------------------------------------------------------
!> @author 
!> Jakub Płotnikowski
!
! DESCRIPTION
!> Provides a wrapper - 
!> a method for matrix multiplication using built in matmul method in fortran 
! REVISION HISTORY
! 14.05.2019 - Initial version
!
!> @param[in] A - first matrix
!> @param[in] B - second matrix
!> @param[out] C - result matrix
!----------------------------------------------------------------

module matmull_wrapper
    contains
    subroutine matrix_multiplication(A, B, C)
        integer, intent(in), dimension(:, :) :: A
        integer, intent(in), dimension(:, :) :: B
        
        integer :: C(size(A, 1), size(B, 2))
        
!f2py intent(in) :: A, B
!f2py intent(out) :: C

        ! allocate(C(size(A, 1), size(B, 2)))

        C = matmul(A, B)
    end subroutine

end module
