module mcf_tipos

! For scientific calculus, it is interesting to define the
! precision of the arguments that we are working with.

!
! How to use
!---------------------------------
! program example
! use mcf_tipos
!
! real(kind=doble)    :: x
! integer(kind=byte)  :: n
!   ...
! end program example
!----------------------------------
!
!=======================================================================
! INTEGERS
!
integer, parameter, public :: int2   = selected_int_kind(2)
integer, parameter, public :: int4   = selected_int_kind(4)
integer, parameter, public :: int8   = selected_int_kind(8)
integer, parameter, public :: int10  = selected_int_kind(10)

integer, parameter, public :: byte  = int2
integer, parameter, public :: short = int4
integer, parameter, public :: int   = int8
integer, parameter, public :: long  = int10

!
! REALS
!
integer, parameter, public :: single = selected_real_kind(6)
integer, parameter, public :: double = selected_real_kind(14)
!
! ANOTHER NAMES FOR THE SAME TYPES
!
integer, parameter, public :: sencillo = single
integer, parameter, public :: doble = double
!
integer, parameter, public :: sp = single
integer, parameter, public :: dp = double
integer, parameter, public :: qp=selected_real_kind(33)

end module mcf_tipos
