"""
Função calcula serie de fibonacci

ffiboR_JL(valor)
"""

function ffiboR_JL(n) 
    if n < 2 
        return n
    else
        ffiboR_JL(n-1) + ffiboR_JL(n-2)
    end
end