# fortran-fortress
A repository of my efforts to learn fortran with python scripts to plot the results

# supported methods
- newton-raphson
- euler-maruyama
- euler
- monte carlo calculation of pi
- geometric series
- linear regression (one variable)
# usage
```bash
git clone https://github.com/AdamZettel/fortran-fortress.git
cd fortran-fortress/numerical
gfortran monte_carlo_pi.f90 -o monte_carlo_pi
./monte_carlo_pi
python3 plot_monte_carlo_pi.py
```
![mc_pi](https://github.com/AdamZettel/fortran-fortress/assets/104731318/9538adc1-a276-473b-8e87-584b6d36013f)
