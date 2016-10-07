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
! Module containing precision info subroutines
!
!

module precision_module

    use, intrinsic::iso_fortran_env

    implicit none

    integer, parameter :: sp = REAL32
    integer, parameter :: dp = REAL64

    real(sp) :: single_precision_mi
    real(dp) :: double_precision_mi
    real     :: real_mi

contains

    subroutine print_precision

        print*,

        print*, single_precision_mi
        print*, "The precision of module internal ISO single precision is ", precision(single_precision_mi)
        print*, "The range of module internal ISO single precision is ", range(single_precision_mi)
        print*, "The maxmium exponent of module internal ISO single precision is ", maxexponent(single_precision_mi)
        print*, "The minimum exponent of module internal ISO single precision is ", minexponent(single_precision_mi)

        print*,

        print*, double_precision_mi
        print*, "The precision of module internal ISO double precision is ", precision(double_precision_mi)
        print*, "The range of module internal ISO double precision is ", range(double_precision_mi)
        print*, "The maxmium exponent of module internal ISO double precision is ", maxexponent(double_precision_mi)
        print*, "The minimum exponent of module internal ISO double precision is ", minexponent(double_precision_mi)

        print*,

        print*, real_mi
        print*, "The precision of module internal real is ", precision(real_mi)
        print*, "The range of module internal real is ", range(real_mi)
        print*, "The maxmium exponent of module internal real is ", maxexponent(real_mi)
        print*, "The minimum exponent of module internal real is ", minexponent(real_mi)

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
