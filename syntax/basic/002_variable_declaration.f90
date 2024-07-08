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
