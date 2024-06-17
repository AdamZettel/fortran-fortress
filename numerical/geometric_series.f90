program geometric_series
    implicit none
    integer, parameter :: dp = kind(1.0d0)
    integer :: n, i
    real(dp) :: a, r 
    real(dp), dimension(:), allocatable :: series, running_sums
    character(len=100) :: filename

    ! Parameters for the geometric series
    a = 1.0_dp     ! First term
    r = 0.5_dp     ! Common ratio
    n = 20         ! Number of terms

    ! Allocate arrays
    allocate(series(n))
    allocate(running_sums(n))

    ! Compute the geometric series and running sums
    series(1) = a
    running_sums(1) = a
    do i = 2, n
        series(i) = series(i-1) * r
        running_sums(i) = running_sums(i-1) + series(i)
    end do

    ! Set filename
    filename = 'geometric_series_running_sum.csv'

    ! Write to CSV file
    open(unit=10, file=filename, status='replace')
    write(10, '(A)') 'Term,Value,Running_Sum'  ! CSV header
    do i = 1, n
        write(10, '(I5,1x,F10.5,1x,F10.5)') i, series(i), running_sums(i)
    end do
    close(10)

    ! Deallocate arrays
    deallocate(series)
    deallocate(running_sums)

end program geometric_series
