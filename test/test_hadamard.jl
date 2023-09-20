



@testset "Hadamard" begin
    for x ∈ [ -1.0, 0.1, 2.3, π, -10.0 ]
        @test HadamardGamma( x + 1 ) ≈ x * HadamardGamma( x ) + 1.0 / EulerGamma( 1.0 - x )
    end
    for x ∈ [1.0, 2.0, 4.0 ]
        @test HadamardGamma( x + 1 ) ≈ x * HadamardGamma( x )
    end
    @test HadamardGamma(9.0) ≈ 40_320.0
end

