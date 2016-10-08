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
! Test program to call precision statements from module
!
!

program precision_test

    use precision_module, only: code => print_precision

    use, intrinsic :: iso_fortran_env

    implicit none

    integer, parameter :: sp = REAL32
    integer, parameter :: dp = REAL64

    real(sp) :: single_precision_in
    real(dp) :: double_precision_in
    real     :: real_in

    !single_precision_in = 0.99999999999999999999999999
    !double_precision_in = 0.99999999999999999999999999
    !real_in             = 0.99999999999999999999999999

    call code(single_precision_in, double_precision_in, real_in)

end program precision_test

!######################################!
!                                      !
!     Precision Test                   !
!                                      !
!     FrB                              !
!                                      !
!######################################!
