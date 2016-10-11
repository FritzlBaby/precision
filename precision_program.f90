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

    use types

    use precision_module, only: code => print_precision, &
                                arry => array_check

    implicit none

    real(sp), save :: single_precision_in
    real(dp), save :: double_precision_in

    integer(i4), parameter :: sp_n = 5_i4
    integer(i4), parameter :: dp_n = 5_i4

    real(sp) :: sp_array(sp_n)
    real(dp) :: dp_array(dp_n)

    sp_array = 1.0_sp
    dp_array = 2.0_sp

    print*, sp_array
    print*, dp_array

    call code(single_precision_in, double_precision_in)

    call arry(sp_array, sp_n, dp_array, dp_n)

end program precision_test

!######################################!
!                                      !
!     Precision Test                   !
!                                      !
!     FrB                              !
!                                      !
!######################################!
