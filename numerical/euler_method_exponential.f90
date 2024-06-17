program exponential_growth
    implicit none
    integer, parameter :: n = 1000  ! Number of time steps
    real :: y0, k, dt, t, y
    integer :: i
    real, dimension(n) :: time, y_euler, y_analytic

    ! Parameters
    y0 = 1.0         ! Initial value
    k = 0.5          ! Growth rate constant
    dt = 0.01        ! Time step

    ! Initial conditions
    t = 0.0
    y = y0

    ! Open output file
    open(unit=10, file='exponential_growth.csv', status='replace', action='write')
    write(10, '(A)') 'time, y_euler, y_analytic'

    ! Euler method to solve the differential equation
    do i = 1, n
        ! Save current time and values
        time(i) = t
        y_euler(i) = y
        y_analytic(i) = y0 * exp(k * t)
        write(10, '(F20.2, A, F20.6, A, F20.6)') t, ', ', y, ', ', y0 * exp(k * t)
        
        ! Update y using Euler method
        y = y + dt * k * y
        
        ! Update time
        t = t + dt
    end do

    ! Close the output file
    close(10)

end program exponential_growth
