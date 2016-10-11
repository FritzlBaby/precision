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

    use types

    implicit none

    real(sp) :: single_precision_mi
    real(dp) :: double_precision_mi

contains

    subroutine print_precision(single_precision_in, double_precision_in)

        implicit none

        real(sp), intent(in) :: single_precision_in
        real(dp), intent(in) :: double_precision_in

        print*,
        print*, ">>> From Fortran: Precision Prints:"
        print*,

        print*, "Module internal: ISO single precision = ", single_precision_mi
        print*, "    Precision: ", precision(single_precision_mi)
        print*, "    Range    : ", range(single_precision_mi)
        print*, "    Tiny     : ", tiny(single_precision_mi)
        print*, "    Huge     : ", huge(single_precision_mi)
        print*, "    Digits   : ", digits(single_precision_mi)
        print*, "    Max exp  : ", maxexponent(single_precision_mi)
        print*, "    Min exp  : ", minexponent(single_precision_mi)
        print*, "    Kind     : ", kind(single_precision_mi)
        print*,

        print*, "Module internal: ISO double precision = ", double_precision_mi
        print*, "    Precision: ", precision(double_precision_mi)
        print*, "    Range    : ", range(double_precision_mi)
        print*, "    Tiny     : ", tiny(double_precision_mi)
        print*, "    Huge     : ", huge(double_precision_mi)
        print*, "    Digits   : ", digits(double_precision_mi)
        print*, "    Max exp  : ", maxexponent(double_precision_mi)
        print*, "    Min exp  : ", minexponent(double_precision_mi)
        print*, "    Kind     : ", kind(double_precision_mi)
        print*,

        print*, "Intent in: ISO single precision = ", single_precision_in
        print*, "    Precision: ", precision(single_precision_in)
        print*, "    Range    : ", range(single_precision_in)
        print*, "    Tiny     : ", tiny(single_precision_in)
        print*, "    Huge     : ", huge(single_precision_in)
        print*, "    Digits   : ", digits(single_precision_in)
        print*, "    Max exp  : ", maxexponent(single_precision_in)
        print*, "    Min exp  : ", minexponent(single_precision_in)
        print*, "    Kind     : ", kind(single_precision_in)
        print*,

        print*, "Intent in: ISO double precision = ", double_precision_in
        print*, "    Precision: ", precision(double_precision_in)
        print*, "    Range    : ", range(double_precision_in)
        print*, "    Tiny     : ", tiny(double_precision_in)
        print*, "    Huge     : ", huge(double_precision_in)
        print*, "    Digits   : ", digits(double_precision_in)
        print*, "    Max exp  : ", maxexponent(double_precision_in)
        print*, "    Min exp  : ", minexponent(double_precision_in)
        print*, "    Kind     : ", kind(double_precision_in)
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
