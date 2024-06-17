module model
    implicit none
    real, parameter :: theta = 0.7
    real, parameter :: mu = 1.5
    real, parameter :: sigma = 0.06
end module model

module functions
    use model
    implicit none
contains
    function mu_func(y, t) result(mu_value)
        real, intent(in) :: y, t
        real :: mu_value
        mu_value = theta * (mu - y)
    end function mu_func

    function sigma_func(y, t) result(sigma_value)
        real, intent(in) :: y, t
        real :: sigma_value
        sigma_value = sigma
    end function sigma_func

    function dW(delta_t) result(dw_value)
        real, intent(in) :: delta_t
        real :: dw_value
        call random_seed()
        call random_number(dw_value)
        dw_value = sqrt(-2.0 * log(dw_value)) * cos(2.0 * 3.141592653589793 * dw_value)
        dw_value = dw_value * sqrt(delta_t)
    end function dW
end module functions

program main
    use model
    use functions
    implicit none
    integer, parameter :: num_sims = 5
    integer :: i, n
    real :: T_INIT, T_END, DT
    real, allocatable :: ts(:), ys(:)
    
    T_INIT = 3.0
    T_END = 7.0
    n = 1000
    DT = (T_END - T_INIT) / n

    allocate(ts(0:n))
    allocate(ys(0:n))

    call run_simulation(T_INIT, T_END, n, DT, ts, ys)
    call write_output(ts, ys, n)
    
    contains
        subroutine run_simulation(T_INIT, T_END, n, DT, ts, ys)
            real, intent(in) :: T_INIT, T_END, DT
            integer, intent(in) :: n
            real, intent(out) :: ts(0:n), ys(0:n)
            real :: t, y
            integer :: i

            ts(0) = T_INIT
            ys(0) = 0.0

            do i = 1, n
                t = T_INIT + (i - 1) * DT
                y = ys(i - 1)
                ts(i) = t
                ys(i) = y + mu_func(y, t) * DT + sigma_func(y, t) * dW(DT)
            end do
        end subroutine run_simulation

        subroutine write_output(ts, ys, n)
            integer, intent(in) :: n
            real, intent(in) :: ts(0:n), ys(0:n)
            integer :: i
            open(unit=10, file="simulation_output.txt", status="replace")
            do i = 0, n
                write(10, *) ts(i), ys(i)
            end do
            close(10)
        end subroutine write_output

end program main
