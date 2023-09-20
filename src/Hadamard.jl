


const halfoverπ = 0.5 / π

function HadamardGammaNegative( x :: Real )
    @assert x ≤ zero( x )  "$x is not less than zero"
    y = 0.5x
    return 0.5 * ( EulerDiGamma( 1.0 - y ) - EulerDiGamma( 0.5 - y ) ) / EulerGamma( one(x) - x )
end

function HadamardGammaOther( x )  # or complex
    @assert !( isreal(x) && x ≤ zero( x ) )  "$x cannot be less than zero"
    y = 0.5x
    return EulerGamma( x ) * ( one( x ) + ( sin( π * x ) * halfoverπ ) * ( EulerDiGamma( y ) - EulerDiGamma( y + 0.5 ) ) )
end

"""
    HadamardGamma( x :: Number )

Provides Hadamard's gamma function.
"""
function HadamardGamma( x :: Number )
    isreal( x ) && x ≤ 0 && return HadamardGammaNegative( x ) 
    return HadamardGammaOther( x )
end

export HadamardGamma

