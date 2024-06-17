import csv
import matplotlib.pyplot as plt
import numpy as np

# Read data from CSV file
x = []
y = []
inside_circle = []

with open('monte_carlo_points.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=' ')
    next(csvreader)  # Skip header
    for row in csvreader:
        if row:  # Skip empty rows
            x.append(float(row[0]))
            y.append(float(row[1]))
            inside_circle.append(int(row[2]))

# Plot the points
inside_x = [x[i] for i in range(len(x)) if inside_circle[i] == 1]
inside_y = [y[i] for i in range(len(y)) if inside_circle[i] == 1]
outside_x = [x[i] for i in range(len(x)) if inside_circle[i] == 0]
outside_y = [y[i] for i in range(len(y)) if inside_circle[i] == 0]

plt.figure(figsize=(8, 8))
plt.scatter(inside_x, inside_y, color='blue', s=1, label='Inside Circle')
plt.scatter(outside_x, outside_y, color='red', s=1, label='Outside Circle')

# Plot the quarter circle
theta = np.linspace(0, np.pi/2, 100)
circle_x = np.cos(theta)
circle_y = np.sin(theta)
plt.plot(circle_x, circle_y, color='green', linestyle='-', linewidth=2, label='Quarter Circle')

plt.xlabel('x')
plt.ylabel('y')
plt.title('Monte Carlo Simulation for Estimating Pi')
plt.legend()
plt.gca().set_aspect('equal', adjustable='box')
plt.show()

# Estimate Pi over time
estimates = []
count_inside = 0
for i in range(len(x)):
    if inside_circle[i] == 1:
        count_inside += 1
    estimates.append(4 * count_inside / (i + 1))

# Plot the Pi estimates
plt.figure(figsize=(10, 5))
plt.plot(estimates, label='Estimated Pi')
plt.axhline(y=3.141592653589793, color='r', linestyle='-', label='Actual Pi')
plt.xlabel('Number of Points')
plt.ylabel('Estimated Pi')
plt.title('Estimate of Pi Over Time')
plt.legend()
plt.show()

