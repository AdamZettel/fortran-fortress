program arithmetic_operations
    implicit none
    integer, parameter :: dp = kind(1.0d0)
    real(dp) :: a, b, sum, difference, product, quotient

    a = 12.5_dp
    b = 3.5_dp
    sum = a + b
    difference = a - b
    product = a * b
    quotient = a / b

    print *, "Sum: ", sum
    print *, "Difference: ", difference
    print *, "Product: ", product
    print *, "Quotient: ", quotient
end program arithmetic_operations
