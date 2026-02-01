program nc

        use mcf_tipos
        use fun

        real(kind=dp) :: h , p1 , p2 , p4 , p3 , p5 , I , ac , bc
        real(kind=dp) , parameter :: pi=3.1415926535_dp
        real(kind=dp) , parameter :: aa=0.0_dp , bb=1.0_dp
        integer :: n , j , k
        integer , parameter :: M=100000 !number of intervals for the composite rules

        !TRAPEZOIDAL RULE
        n=1
        call nca(aa,bb,n,p1)

        !SIMPSON'S RULE
        n=2
        call nca(aa,bb,n,p2)

        I = pi / 4.0_dp

        print*, " "
        write(unit=*,fmt="(a,f10.8)") "The calculated value of our integral is I = " , I
        print*, " "
        write(unit=*,fmt="(a,f10.8)") "Using the trapezoidal rule, I = " ,  p1
        write(unit=*,fmt="(a,f10.8)") "Using the Simpson's rule, I = " , p2

        !REGLAS COMPUESTAS // TRAPEZOIDE (n=1) // SIMPSON (n=2)

        call ncc(aa,bb,1,M,p4)
        call ncc(aa,bb,2,M,p5)

        write(unit=*,fmt="(a,i6,a,f10.8)") "Using the composite trapezoidal rule with " , M , " points,  I = ", p4
        write(unit=*,fmt="(a,i6,a,f10.8)") "Using the composite rule of Simpson with " , M , " points, I = ", p5
        print*, " "

        contains

        subroutine nca(a,b,n,res)

                real(kind=dp) , intent(in) :: a , b
                integer , intent(in) :: n
                real(kind=dp) , intent(out) :: res
                real(kind=dp) :: h

                if (n==1) then !Trapezoid Rule
                h = b - a
                res = h / 2.0_dp * (f1(a)+f1(b))
                end if

                if (n==2) then !Simson Rule
                h=(b-a)/2.0_dp
                res = h/3.0_dp * ( f1(a) + 4.0_dp*f1(a+h) + f1(b) )
                end if

        end subroutine nca

        subroutine ncc(as,bs,ns,ms,ress) !REGLAS COMPUESTAS

                real(kind=dp) , intent(in) :: as , bs ! Inicio y final del intervalo
                integer , intent(in) :: ns , ms  ! ns=método , ms=número de división de intervalos
                real(kind=dp) , intent(out) :: ress
                real(kind=dp) :: hs , aas
                integer :: k

                ress = 0.0_dp

                if (ns==1) then !Trapezoid composite rule

                hs = (bs-as) / (ms)
                ress = ( f1(as) + f1(bs) ) * hs / 2.0_dp

                do k=2,m-1

                aas = as + hs*(k-1)

                ress = f1(aas) * hs + ress

                end do

                end if

                if (ns==2) then !Simpson composite rule

                hs = (bs-as) / (ms)
                ress = ( f1(as) + f1(bs) ) * hs / 3.0_dp

                do k=2,m-2,2

                aas = as + hs*(k-1)

                ress = hs*(2.0_dp/3.0_dp)*f1(aas) + ress

                aas = aas + hs

                ress = hs*(4.0_dp/3.0_dp)*f1(aas) + ress

                end do
 
                end if

        end subroutine ncc

end program nc
