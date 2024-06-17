program monte_carlo_pi
    implicit none
    integer, parameter :: n = 10000  ! Number of random points
    integer :: i, count
    real :: x, y, pi_estimate
    real :: rand1, rand2

    ! Initialize random number generator
    call random_seed()

    ! Open output file
    open(unit=10, file='monte_carlo_points.csv', status='replace', action='write')
    write(10, *) 'x, y, inside_circle'

    count = 0

    ! Generate random points and count points inside the quarter circle
    do i = 1, n
        call random_number(rand1)
        call random_number(rand2)
        x = rand1
        y = rand2
        if (x**2 + y**2 <= 1.0) then
            count = count + 1
            write(10, '(F6.4, 1X, F6.4, 1X, I1)') x, y, 1
        else
            write(10, '(F6.4, 1X, F6.4, 1X, I1)') x, y, 0
        end if
    end do

    ! Estimate pi
    pi_estimate = 4.0 * real(count) / real(n)

    ! Print the estimate
    print *, 'Estimated Pi:', pi_estimate

    ! Close the output file
    close(10)

end program monte_carlo_pi
