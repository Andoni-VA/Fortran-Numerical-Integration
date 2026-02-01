! This module contains the function that
! we're going to integrate. It's done in
! a way in wich is easy to add another 
! function if we wanted to integrate it 
! in the future.

module fun

        use mcf_tipos

        public :: f1

        contains

                function f1(x)

                real(kind=dp) , intent(in) :: x
                real(kind=dp) :: f1

                f1=sqrt(1.0_dp-(x**2.0_dp))

                end function f1

end module fun
