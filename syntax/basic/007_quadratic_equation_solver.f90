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
