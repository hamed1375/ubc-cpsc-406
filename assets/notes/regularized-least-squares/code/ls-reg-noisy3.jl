# This file was generated, do not modify it. # hide
λ = 100
plot(t, b, leg =:topleft, label="noisy data")
b̂ = [ b; zeros(n-1)]
for λ in LinRange(100,5000,5) 
    Â = [ I; √λ*D ]
    xLS = Â \ b̂
    plot!(t, xLS, label="λ = $(λ)")
end
savefig(joinpath(@OUTPUT,"ls-reg-noisy3")) # hide