import numpy as np
import matplotlib.pyplot as plt

# Read the CSV file
data = np.loadtxt('geometric_series_running_sum.csv', skiprows=1)

# Assigning the columns to variables for clarity
terms = data[:, 0].astype(int)
values = data[:, 1]
running_sums = data[:, 2]

# Expected value of the geometric series sum: S = a / (1 - r)
a = 1.0
r = 0.5
expected_value = a / (1 - r)

# Plotting the data
plt.figure(figsize=(10, 6))
plt.plot(terms, running_sums, marker='o', linestyle='-', color='b', label='Running Sum')
plt.axhline(y=expected_value, color='r', linestyle='--', label=f'Expected Value ({expected_value})')
plt.xlabel('Term')
plt.ylabel('Value')
plt.title('Geometric Series Running Sum and Expected Value')
plt.legend()
plt.grid(True)
plt.show()
