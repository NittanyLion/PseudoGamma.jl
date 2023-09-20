

@testset "Luschny" begin
    for x ∈ [2.0, 2.0, 8.0 ]
        @test LuschnyFactorial( x ) ≈ x * LuschnyFactorial( x - 1 )
    end
    @test LuschnyFactorial( 0.0 ) ≈ 0.5
    @test LuschnyFactorial(8.0) ≈ 40_320.0
end

