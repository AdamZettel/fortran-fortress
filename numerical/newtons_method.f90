!https://en.wikipedia.org/wiki/Newton%27s_method
program newton_method
    implicit none
    integer, parameter:: dp=kind(0.d0) ! double precision
    real(dp) :: f_val, f_prime_val, epsilon, tol, x0, x1
    integer :: max_iter, i

    max_iter = 1000
    tol = 0.001
    x0 = 4.0_dp
    epsilon = 0.00001_dp

    do i = 1,max_iter
        f_val = f(x0)
        f_prime_val = f_prime(x0)
        if (abs(f_prime_val) < epsilon) then
            exit
        end if
        x1 = x0 - f_val/f_prime_val
        if (abs(x1-x0) <= tol) then
            print *, x1
            exit
        end if
        x0 = x1
    end do

contains
    function f(x)
        real(dp) :: f
        real(dp) :: x
        f_val = x**2 - 4
    end function f

    function f_prime(x)
        real(dp) :: f_prime
        real(dp) :: x
        f_prime_val = 2*x
    end function f_prime

end program newton_method