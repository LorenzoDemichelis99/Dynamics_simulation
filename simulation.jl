# this file implements the simulation of the dynamics

# The function implementing the simulation takes the following parameters:
# G: the underlying graph of the dynamics
# T: the number of time steps
# Δ: the time step

function simulation(G::SimpleGraph, T::Int, Δ::F, fx::Function, gx::Function, jx::Function, x_0::Function, noise::Bool) where F <: AbstractFloat
    # initialization
    sim = simulation_data(G, T, Δ, fx, gx, jx, x_0)
    N = nv(G)
    η = Vector{Float64}(undef, T)

    # setting up the progress meter
    p = Progress(T; showspeed=true)
    
    # simulation of the dynamics
    @inbounds for t in 2:T
        if noise == true
            η = copy(noise_values(sim.g, sim.x[:,t-1]))
            for i in 1:N
                sim.x[i,t] = sim.x[i,t-1] + sim.f[i](sim.x[i,t-1]) + η[i]
                for k in 1:N
                    sim.x[i,t] += Δ * sim.x[k,t-1] * sim.J[i,k]
                end
            end
        else
            for i in 1:N
                sim.x[i,t] = sim.x[i,t-1] + sim.f[i](sim.x[i,t-1])
                for k in 1:N
                    sim.x[i,t] += Δ * sim.x[k,t-1] * sim.J[i,k]
                end
            end
        end
        next!(p)
    end

    return sim
end