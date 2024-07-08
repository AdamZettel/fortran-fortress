program simple_interest
    implicit none
    integer, parameter :: dp = kind(1.0d0)
    real(dp) :: principal, rate, time, interest

    print *, "Enter principal amount:"
    read *, principal
    print *, "Enter annual interest rate (in percentage):"
    read *, rate
    print *, "Enter time (in years):"
    read *, time

    interest = principal * rate * time / 100.0_dp
    print *, "Simple Interest: ", interest
end program simple_interest
