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

module precision_module

    use, intrinsic::iso_fortran_env

    implicit none

    integer, parameter :: sp = REAL32
    integer, parameter :: dp = REAL64

    real(sp) :: single_precision
    real(dp) :: double_precision

contains

    subroutine print_precision

        print*, "The precision of single precision is ",precision(single_precision)
        print*, "The precision of double precision is ",precision(double_precision)

        print*, "The maxmium exponent of single precision is ", maxexponent(single_precision)
        print*, "The maxmium exponent of double precision is ", maxexponent(double_precision)

        print*, "The minimum exponent of single precision is ", minexponent(single_precision)
        print*, "The minimum exponent of double precision is ", minexponent(double_precision)

    end subroutine print_precision

end module precision_module

!######################################!
!                                      !
!     Precision Test                   !
!                                      !
!     FrB                              !
!                                      !
!######################################!
