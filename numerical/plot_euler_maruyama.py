import numpy as np
import matplotlib.pyplot as plt

def plot_from_file(filename: str):
    data = np.loadtxt(filename)
    ts, ys = data[:, 0], data[:, 1]
    plt.plot(ts, ys)

def plot_simulations():
    plot_from_file(f'simulation_output.txt')

    plt.title("Euler-Maruyama Method")
    plt.xlabel("time")
    plt.ylabel("y")
    plt.show()

if __name__ == "__main__":
    plot_simulations()

