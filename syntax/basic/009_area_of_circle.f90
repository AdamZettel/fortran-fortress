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
