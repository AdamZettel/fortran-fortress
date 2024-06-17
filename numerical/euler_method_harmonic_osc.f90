program harmonic_oscillator
    implicit none
    integer, parameter :: n = 1000  ! Number of time steps
    real :: y0, v0, omega, dt, t, y, v
    integer :: i
    real, dimension(n) :: time, y_euler, y_analytic

    ! Parameters
    y0 = 1.0          ! Initial displacement
    v0 = 0.0          ! Initial velocity
    omega = 2.0       ! Angular frequency
    dt = 0.01         ! Time step

    ! Initial conditions
    t = 0.0
    y = y0
    v = v0

    ! Open output file
    open(unit=10, file='harmonic_oscillator.csv', status='replace', action='write')
    write(10, '(A)') 'time, y_euler, y_analytic'

    ! Euler method to solve the differential equation
    do i = 1, n
        ! Save current time and values
        time(i) = t
        y_euler(i) = y
        y_analytic(i) = y0 * cos(omega * t)

        ! Update y and v using Euler method
        y = y + dt * v
        v = v - dt * omega**2 * y

        ! Update time
        t = t + dt

        ! Write data to file
        write(10, '(F20.2, A, F20.6, A, F20.6)') t, ', ', y, ', ', y0 * cos(omega * t)
    end do

    ! Close the output file
    close(10)

end program harmonic_oscillator
