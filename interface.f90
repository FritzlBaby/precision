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

subroutine py_interface(single_precision_in, double_precision_in, single_precision_array, double_precision_array)

    use types

    use precision_module, only: code => print_precision, &
                                arry => array_check

    implicit none

    real(sp), intent(in) :: single_precision_in
    real(dp), intent(in) :: double_precision_in

    real(sp), intent(in) :: single_precision_array(:)
    real(dp), intent(in) :: double_precision_array(:)

    integer(i4) :: spn
    integer(i4) :: dpn

    spn = size(single_precision_array)
    dpn = size(double_precision_array)

    ! print inputs before passing to module
    print*, "Input from Python: single precision = ", single_precision_in
    print*, "Input from Python: double precision = ", double_precision_in
    print*, "Input from Python: single precision array (", spn,") = ", single_precision_array
    print*, "Input from Python: double precision array (", dpn,") = ", double_precision_array

    call code(single_precision_in, double_precision_in)

    call arry(single_precision_array, spn, double_precision_array, dpn)

end subroutine py_interface

!######################################!
!                                      !
!     Precision Test                   !
!                                      !
!     FrB                              !
!                                      !
!######################################!
