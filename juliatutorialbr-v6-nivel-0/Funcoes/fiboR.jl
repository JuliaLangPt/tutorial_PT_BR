"""
Função que calcula a série de Fibonacci

fiboR(termo)
"""

function fiboR(n) 
    if n < 2 
        return n
    else
        fiboR(n - 1) + fiboR(n - 2)
    end
end
