

@testset "Luschny" begin
    for x ∈ [1.0, 2.0, 4.0 ]
        @test LuschnyGamma( x ) ≈ x * LuschnyGamma( x - 1 )
    end
    @test LuschnyGamma( x ) ≈ 0.5
    @test LuschnyGamma(8.0) ≈ 40_320.0
end

