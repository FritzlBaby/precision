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
		print*, "Precision Prints:"
        print*,

		print*, "Module internal: ISO single precision = ", single_precision_mi
		print*, "\tPrecision: ", precision(single_precision_mi)
		print*, "\tRange    : ", range(single_precision_mi)
		print*, "\tTiny     : ", tiny(single_precision_mi)
		print*, "\tHuge     : ", huge(single_precision_mi)
		print*, "\tDigits   : ", digits(single_precision_mi)
		print*, "\tMax exp  : ", maxexponent(single_precision_mi)
		print*, "\tMin exp  : ", minexponent(single_precision_mi)
        print*,

		print*, "Module internal: ISO double precision = ", double_precision_mi
		print*, "\tPrecision: ", precision(double_precision_mi)
		print*, "\tRange    : ", range(double_precision_mi)
		print*, "\tTiny     : ", tiny(double_precision_mi)
		print*, "\tHuge     : ", huge(double_precision_mi)
		print*, "\tDigits   : ", digits(double_precision_mi)
		print*, "\tMax exp  : ", maxexponent(double_precision_mi)
		print*, "\tMin exp  : ", minexponent(double_precision_mi)
        print*,
		
		
		
		
		
		
		
		
		
		
		
		
        print*, double_precision_mi
        print*, "The precision of module internal ISO double precision is "       , precision(double_precision_mi)
        print*, "The range of module internal ISO double precision is "           , range(double_precision_mi)
        print*, "The maxmium exponent of module internal ISO double precision is ", maxexponent(double_precision_mi)
        print*, "The minimum exponent of module internal ISO double precision is ", minexponent(double_precision_mi)
        print*, "The huge of module internal ISO double precision is "            , huge(double_precision_mi)
        print*, "The tiny of module internal ISO double precision is "            , tiny(double_precision_mi)
        print*, "The digits of module internal ISO double precision is "          , digits(double_precision_mi)

        print*,

        print*, real_mi
        print*, "The precision of module internal real is "       , precision(real_mi)
        print*, "The range of module internal real is "           , range(real_mi)
        print*, "The maxmium exponent of module internal real is ", maxexponent(real_mi)
        print*, "The minimum exponent of module internal real is ", minexponent(real_mi)
        print*, "The huge of module internal real is "            , huge(real_mi)
        print*, "The tiny of module internal real is "            , tiny(real_mi)
        print*, "The digits of module internal real is "          , digits(real_mi)

        print*,

        print*, single_precision_in
        print*, "The precision of intent in ISO single precision is "       , precision(single_precision_in)
        print*, "The range of intent in ISO single precision is "           , range(single_precision_in)
        print*, "The maxmium exponent of intent in ISO single precision is ", maxexponent(single_precision_in)
        print*, "The minimum exponent of intent in ISO single precision is ", minexponent(single_precision_in)
        print*, "The huge of intent in ISO single precision is "            , huge(single_precision_in)
        print*, "The tiny of intent in ISO single precision is "            , tiny(single_precision_in)
        print*, "The digits of intent in ISO single precision is "          , digits(single_precision_mi)

        print*,

        print*, double_precision_in
        print*, "The precision of intent in double precision is "       , precision(double_precision_in)
        print*, "The range of intent in double precision is "           , range(double_precision_in)
        print*, "The maxmium exponent of intent in double precision is ", maxexponent(double_precision_in)
        print*, "The minimum exponent of intent in double precision is ", minexponent(double_precision_in)
        print*, "The huge of module internal ISO single precision is "  , huge(double_precision_in)
        print*, "The tiny of module internal ISO single precision is "  , tiny(double_precision_in)
        print*, "The significant binary digits of ISO single precision is"        , digits(single_precision_mi)

        print*,

        print*, real_in
        print*, "The precision of intent in real is "       , precision(real_in)
        print*, "The range of intent in real is "           , range(real_in)
        print*, "The maxmium exponent of intent in real is ", maxexponent(real_in)
        print*, "The minimum exponent of intent in real is ", minexponent(real_in)
        print*, "The huge of intent in real is "            , huge(real_in)
        print*, "The tiny of intent in real is "            , tiny(real_in)
        print*, "The significant binary digits of ISO single precision is"        , digits(single_precision_mi)

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
