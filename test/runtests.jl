using PseudoGamma
using Test
using Aqua


Aqua.test_all( PseudoGamma; ambiguities=(recursive=false))



@testset "PseudoGamma.jl" begin
    include( "test_euler.jl" )
    include( "test_hadamard.jl" )
    include( "test_luschny.jl" )
end
