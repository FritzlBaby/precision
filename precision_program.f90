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

    use precision_module, only: code => print_precision

    implicit none

    real(sp), save :: single_precision_in
    real(dp), save :: double_precision_in

    call code(single_precision_in, double_precision_in)

end program precision_test

!######################################!
!                                      !
!     Precision Test                   !
!                                      !
!     FrB                              !
!                                      !
!######################################!
