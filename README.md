# fortran-fortress
A repository of my efforts to learn fortran with python scripts to plot the results

## quickstart
```bash
git clone https://github.com/AdamZettel/fortran-fortress.git
cd fortran-fortress/numerical
gfortran monte_carlo_pi.f90 -o monte_carlo_pi
./monte_carlo_pi
python3 plot_monte_carlo_pi.py
```
![mc_pi](https://github.com/AdamZettel/fortran-fortress/assets/104731318/9538adc1-a276-473b-8e87-584b6d36013f)

# numerical methods
- [newton-raphson](newtons_method.f90)
- [euler](euler_method_exponential.f90)
- [euler-maruyama](euler_maruyama.f90)
- [monte carlo calculation of pi](../monte_carlo_pi.f90)
- [geometric series](geometric_series.f90)
- [linear regression (one variable)](linear_regression.f90)
# example programs
These programs show the basics of Fortran syntax
## [hello world](../syntax/basic/000_hello_world.f90)
```fortran
program hello_world
    print *, "Hello, World!"
end program hello_world
```
## [simple addition](syntax/basic/001_simple_addition.f90)
```fortran
program simple_addition
    implicit none
    integer :: a, b, sum

    a = 5
    b = 10
    sum = a + b

    print *, "The sum of ", a, " and ", b, " is ", sum
end program simple_addition
```
## [variable declaration](syntax/basic/002_variable_declaration.f90)
```fortran
program variable_declaration
    implicit none
    integer, parameter :: dp = kind(1.0d0)
    integer :: int_var
    real(dp) :: real_var
    character(len=20) :: char_var

    int_var = 1
    real_var = 1.5_dp
    char_var = 'a'

    print *, "Integer: ", int_var
    print *, "Real (dp): ", real_var
    print *, "Character: ", char_var
end program variable_declaration
```
## input output
```fortran
program input_output
    implicit none
    integer :: num

    print *, "Enter an integer (press enter after you type it):"
    read *, num
    print *, "You entered: ", num
end program input_output
```
## arithmetic operations
```fortran
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
```
## temperature conversion
```fortran
program temperature_conversion
    implicit none
    integer, parameter :: dp = kind(1.0d0)
    real(dp) :: celsius, fahrenheit

    print *, "Enter temperature in Celsius:"
    read *, celsius
    fahrenheit = celsius * 9.0_dp / 5.0_dp + 32.0_dp
    print *, "Temperature in Fahrenheit: ", fahrenheit
end program temperature_conversion
```
## simple interest
```fortran
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
```
## quadratic equation solver
```fortran
program quadratic_equation_solver
    implicit none
    integer, parameter :: dp = kind(1.0d0)
    real(dp) :: a, b, c, discriminant, root1, root2

    print *, "Enter coefficients a, b, and c:"
    read *, a, b, c

    discriminant = b**2 - 4.0 * a * c

    if (discriminant < 0.0) then
        print *, "The equation has no real roots."
    else
        root1 = (-b + sqrt(discriminant)) / (2.0 * a)
        root2 = (-b - sqrt(discriminant)) / (2.0 * a)
        print *, "The roots are: ", root1, " and ", root2
    end if
end program quadratic_equation_solver
```

## bmi calculator
```fortran
program bmi_calculator
    implicit none
    integer, parameter :: dp = kind(1.0d0)
    real(dp) :: weight, height, bmi

    print *, "Enter weight in kilograms:"
    read *, weight
    print *, "Enter height in meters:"
    read *, height

    bmi = weight / (height**2)
    print *, "Body Mass Index (BMI): ", bmi
end program bmi_calculator
```

## area of circle
```fortran
program area_of_circle
    implicit none
    integer, parameter :: dp = kind(1.0d0)
    real(dp) :: radius, area
    real, parameter :: pi = 3.14159

    print *, "Enter the radius of the circle:"
    read *, radius

    area = pi * radius**2
    print *, "Area of the circle: ", area
end program area_of_circle
```

