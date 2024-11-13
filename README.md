# Simulation of a dynamics with linear couplings on a generic graph

## Structure of the files

This repository contains a Jupyter notebook and some Julia files to implement the simulation of a generic dynamics with linear couplings on a generic graph, with the possibility of introducing also an additive noise. 
The file structure is the following: simulation_data.jl contains the code that defines the mutable struct used to store all the important information about the simulation and the code, together with the constructor of the strcut and the functions that initialize the relevant quantities of the simulation; simulation.jl contains the function implementing the actual simulation; simulation_tools.jl contains all the utility functions required to plot and save the results of the simulation.


## Dynamics implemented on the graph

Let ![Equation]([https://quicklatex.com/cache3/11/ql_804a9efb50378d004773ddda9bfbdd11_l3.png](https://latex.codecogs.com/svg.image?$G=(V,E)$)) be the graph on which the dynamics is defined, with ![Equation](https://quicklatex.com/cache3/7d/ql_2a8db369ba88eed4c12181089182d57d_l3.png) being the node set and ![Equation](https://quicklatex.com/cache3/5d/ql_7cc63468755bc569cee6e4e976f3bf5d_l3.png) being the edge set; the evolution of the degree of freedom ![Equation](https://quicklatex.com/cache3/00/ql_73778c06fcd87b534a5bccb5b487e600_l3.png) is determined by the following stochastic differential equation:

![Equation](https://quicklatex.com/cache3/58/ql_553894d45244983aeaf2f5c7daea0958_l3.png)
