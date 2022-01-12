# This file was generated, do not modify it. # hide
using LinearAlgebra, Plots
n = 300
t = LinRange(0, 4, n)
x̂ = @. sin(t) + t*cos(t)^2
w = 0.1*randn(n)
b = x̂ + w
plot(b, label="b")
savefig(joinpath(@OUTPUT,"noisy")) # hide