versioninfo()
using BenchmarkTools, LinearAlgebra, Random

# generate random data
Random.seed!(123)
n = 1000
A = diagm(0 => randn(n)) # a diagonal matrix stored as Matrix{Float64}
b = randn(n);

@which A \ b
@benchmark $A \ $b
@benchmark Diagonal($A) \ $b