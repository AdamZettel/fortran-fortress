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
