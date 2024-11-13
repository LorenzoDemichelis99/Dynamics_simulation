# Simulation of a dynamics with linear couplings on a generic graph

This repository contains a Jupyter notebook and some Julia files to implement the simulation of a generic dynamics with linear couplings on a generic graph, with the possibility of introducing also an additive noise. 
The file structure is the following: simulation_data.jl contains the code that defines the mutable struct used to store all the important information about the simulation and the code, together with the constructor of the strcut and the functions that initialize the relevant quantities of the simulation; simulation.jl contains the function implementing the actual simulation; simulation_tools.jl contains all the utility functions required to plot and save the results of the simulation.
