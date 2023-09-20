

@testset "Euler" begin
    for x ∈ [ 0.1, 1.0, 2.3, π, 10.0 ]
        @test EulerGamma( x + 1 ) ≈ EulerGamma( x ) * x 
    end
    @test EulerGamma(9.0) ≈ 40_320.0
end


