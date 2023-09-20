



"""
    EulerGamma( x )

Returns Euler's gamma function; just calls `gamma` from `SpecialFunctions`.
"""
EulerGamma( x ) = gamma( x )

"""
    EulerDiGamma( x )

Returns Euler's digamma function; just calls `digamma` from `SpecialFunctions`.
"""
EulerDiGamma( x ) = digamma( x )


export EulerGamma, EulerDiGamma
