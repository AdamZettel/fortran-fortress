import csv
import matplotlib.pyplot as plt

# Read data from CSV file
time = []
y_euler = []
y_analytic = []

with open('exponential_growth.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    next(csvreader)  # Skip header
    for row in csvreader:
        time.append(float(row[0]))
        y_euler.append(float(row[1]))
        y_analytic.append(float(row[2]))

# Plot the results
plt.figure(figsize=(10, 6))
plt.plot(time, y_euler, label='Euler Method', color='blue', marker='o', markersize=2)
plt.plot(time, y_analytic, label='Analytic Solution', color='red', linestyle='--')
plt.xlabel('Time')
plt.ylabel('y')
plt.title('Exponential Growth: Euler Method vs Analytic Solution')
plt.legend()
plt.grid(True)
plt.show()
