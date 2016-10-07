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

        print*,

        print*, single_precision
        print*, "The precision of module internal ISO single precision is ", precision(single_precision)
        print*, "The range of module internal ISO single precision is ", range(single_precision)
        print*, "The maxmium exponent of module internal ISO single precision is ", maxexponent(single_precision)
        print*, "The minimum exponent of module internal ISO single precision is ", minexponent(single_precision)

        print*,

        print*, double_precision
        print*, "The precision of module internal ISO double precision is ", precision(double_precision)
        print*, "The range of module internal ISO double precision is ", range(double_precision)
        print*, "The maxmium exponent of module internal ISO double precision is ", maxexponent(double_precision)
        print*, "The minimum exponent of module internal ISO double precision is ", minexponent(double_precision)

        print*,

    end subroutine print_precision

end module precision_module

!######################################!
!                                      !
!     Precision Test                   !
!                                      !
!     FrB                              !
!                                      !
!######################################!
