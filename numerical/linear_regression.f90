program linear_regression
    implicit none
    integer, parameter :: n = 10
    real :: x(n), y(n), slope, intercept, r_squared
    real :: sum_x, sum_y, sum_xy, sum_x2, mean_x, mean_y
    integer :: i
    character(len=256) :: filename = 'linear_regression_output.csv'
    character(len=256) :: line

    ! Example data
    x = (/ 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0 /)
    y = (/ 2.1, 2.4, 3.0, 3.8, 5.1, 5.3, 6.6, 7.1, 7.9, 9.0 /)

    ! Initialize sums
    sum_x = 0.0
    sum_y = 0.0
    sum_xy = 0.0
    sum_x2 = 0.0

    ! Calculate sums
    do i = 1, n
        sum_x = sum_x + x(i)
        sum_y = sum_y + y(i)
        sum_xy = sum_xy + x(i) * y(i)
        sum_x2 = sum_x2 + x(i) * x(i)
    end do

    ! Calculate means
    mean_x = sum_x / n
    mean_y = sum_y / n

    ! Calculate slope and intercept
    slope = (n * sum_xy - sum_x * sum_y) / (n * sum_x2 - sum_x * sum_x)
    intercept = mean_y - slope * mean_x

    ! Calculate R-squared
    r_squared = (sum_xy - sum_x * sum_y / n)**2 / ((sum_x2 - sum_x * sum_x / n) * (sum_y**2 - sum_y * sum_y / n))

    ! Output results to CSV file
    open(unit=10, file=filename, status='replace', action='write')
    write(10,'(A)') 'x,y,y_fit'
    do i = 1, n
        write(line, '(F5.1,1X,F5.1,1X,F5.1)') x(i), y(i), intercept + slope * x(i)
        write(10,'(A)') trim(line)
    end do
    close(10)

    ! Print results to screen
    print *, 'Slope: ', slope
    print *, 'Intercept: ', intercept
    print *, 'R-squared: ', r_squared
end program linear_regression
