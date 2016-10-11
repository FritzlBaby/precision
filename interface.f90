!######################################!
!                                      !
!     Precision Test                   !
!                                      !
!     FrB                              !
!                                      !
!######################################!

!
! Description
! ===========
!
!
!

subroutine py_interface(single_precision_in, double_precision_in)

    use types

    use precision_module, only: code => print_precision

    implicit none

    real(sp), intent(in) :: single_precision_in
    real(dp), intent(in) :: double_precision_in

    ! print inputs before passing to module
    print*, "Input from Python: single precision = ", single_precision_in
    print*, "Input from Python: double precision = ", double_precision_in

    call code(single_precision_in, double_precision_in)

end subroutine py_interface

!######################################!
!                                      !
!     Precision Test                   !
!                                      !
!     FrB                              !
!                                      !
!######################################!
