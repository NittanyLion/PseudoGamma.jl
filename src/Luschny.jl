



function LuschnyFactorialNegative( x :: Real )
    @assert x ≤ zero( x )  "$x is positive"
    y = 0.5x
    return - 0.5 * (  x * ( EulerDiGamma( 0.5 - y ) - EulerDiGamma( 1.0 - y ) ) - 1.0  ) / EulerGamma( 1.0 -x )
end

function LuschnyFactorialOther( x )  # or complex
    @assert !( isreal(x) && x ≤ zero( x ) )  "$x cannot be less than zero"
    y = 0.5x
    return EulerGamma( x + 1.0 ) * ( 1.0 - 0.5 * sinc( x ) * ( x * ( EulerDiGamma( y + 0.5 ) - EulerDiGamma( y ) ) - 1.0 ) )
end

"""
    LuschnyFactorial( x :: Number )

Provides Luschny's factorial function.
"""
function LuschnyFactorial( x :: Number )
    isreal( x ) && x ≤ 0 && return LuschnyFactorialNegative( x ) 
    return LuschnyFactorialOther( x )
end

export LuschnyFactorial

