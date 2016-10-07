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

    use, intrinsic :: iso_fortran_env

    implicit none

    integer, parameter :: sp = REAL32
    integer, parameter :: dp = REAL64

    real(sp) :: single_precision_mi
    real(dp) :: double_precision_mi
    real     :: real_mi

contains

    subroutine print_precision(single_precision_in, double_precision_in, real_in)

        implicit none

        real(sp), intent(in) :: single_precision_in
        real(dp), intent(in) :: double_precision_in
        real    , intent(in) :: real_in

        print*,

        print*, single_precision_mi
        print*, "The precision of module internal ISO single precision is "       , precision(single_precision_mi)
        print*, "The range of module internal ISO single precision is "           , range(single_precision_mi)
        print*, "The maxmium exponent of module internal ISO single precision is ", maxexponent(single_precision_mi)
        print*, "The minimum exponent of module internal ISO single precision is ", minexponent(single_precision_mi)

        print*,

        print*, double_precision_mi
        print*, "The precision of module internal ISO double precision is "       , precision(double_precision_mi)
        print*, "The range of module internal ISO double precision is "           , range(double_precision_mi)
        print*, "The maxmium exponent of module internal ISO double precision is ", maxexponent(double_precision_mi)
        print*, "The minimum exponent of module internal ISO double precision is ", minexponent(double_precision_mi)

        print*,

        print*, real_mi
        print*, "The precision of module internal real is "       , precision(real_mi)
        print*, "The range of module internal real is "           , range(real_mi)
        print*, "The maxmium exponent of module internal real is ", maxexponent(real_mi)
        print*, "The minimum exponent of module internal real is ", minexponent(real_mi)

        print*,

        print*, single_precision_in
        print*, "The precision of intent in single precision is "       , precision(single_precision_in)
        print*, "The range of intent in single precision is "           , range(single_precision_in)
        print*, "The maxmium exponent of intent in single precision is ", maxexponent(single_precision_in)
        print*, "The minimum exponent of intent in single precision is ", minexponent(single_precision_in)

        print*,

        print*, double_precision_in
        print*, "The precision of intent in double precision is "       , precision(double_precision_in)
        print*, "The range of intent in double precision is "           , range(double_precision_in)
        print*, "The maxmium exponent of intent in double precision is ", maxexponent(double_precision_in)
        print*, "The minimum exponent of intent in double precision is ", minexponent(double_precision_in)

        print*,

        print*, real_in
        print*, "The precision of intent in real is "       , precision(real_in)
        print*, "The range of intent in real is "           , range(real_in)
        print*, "The maxmium exponent of intent in real is ", maxexponent(real_in)
        print*, "The minimum exponent of intent in real is ", minexponent(real_in)

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
