# Simulation of a dynamics with linear couplings on a generic graph

## Structure of the files

This repository contains a Jupyter notebook and some Julia files to implement the simulation of a generic dynamics with linear couplings on a generic graph, with the possibility of introducing also an additive noise. 
The file structure is the following: simulation_data.jl contains the code that defines the mutable struct used to store all the important information about the simulation and the code, together with the constructor of the strcut and the functions that initialize the relevant quantities of the simulation; simulation.jl contains the function implementing the actual simulation; simulation_tools.jl contains all the utility functions required to plot and save the results of the simulation.


## Dynamics implemented on the graph

Let $G=(V,E)$ be the graph on which the dynamics is defined, with $V$ being the node set and $E$ being the edge set; the evolution of the degree of freedom $x_{i}(t)$, with $i \in V$, is determined by the following stochastic differential equation:
```math
\begin{equation}
    \frac{dx_{i}}{dt} = f[x_{i}(t)] + \sum_{j \in \partial i} J_{ij} x_{j}(t) + \eta_{i}(t)
\end{equation}
```
