program temperature_conversion
    implicit none
    integer, parameter :: dp = kind(1.0d0)
    real(dp) :: celsius, fahrenheit

    print *, "Enter temperature in Celsius:"
    read *, celsius
    fahrenheit = celsius * 9.0_dp / 5.0_dp + 32.0_dp
    print *, "Temperature in Fahrenheit: ", fahrenheit
end program temperature_conversion
