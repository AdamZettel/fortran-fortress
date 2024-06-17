import csv
import matplotlib.pyplot as plt

# Read data from CSV file
x = []
y = []
y_fit = []

with open('linear_regression_output.csv', 'r') as csvfile:
    next(csvfile)  # Skip header
    for row in csvfile:
        row_entries = row.split()
        x.append(float(row_entries[0]))
        y.append(float(row_entries[1]))
        y_fit.append(float(row_entries[2]))

# Plot the data
plt.scatter(x, y, color='blue', label='Data Points')
plt.plot(x, y_fit, color='red', label='Fitted Line')
plt.xlabel('X')
plt.ylabel('Y')
plt.title('Linear Regression')
plt.legend()
plt.show()

