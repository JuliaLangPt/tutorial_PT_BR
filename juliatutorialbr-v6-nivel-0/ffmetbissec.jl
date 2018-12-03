"""

**Metodo da Bissecção**

Calcula uma aproximação para uma raiz da função f(x)

no intervalo [a_0,b_0] e tolerância de erro dado por tol.

ex: ffmetbissec("x^2 - 2*x - 8", -5, 5, 0.000001)

adaptado de https://bit.ly/2S5BjlX

"""
function ffmetbissec(funcao, a, b, tol = 0.00001)    
    println("f(x) = ", funcao)
    println()    
    @eval g(x) = $(Meta.parse(funcao)) # transforma a string em uma formula manipulável
    local iteracao = 0
    println("Iteração | Valor Médio | Valor função")
    
    if g(a)*g(b) > 0 
        println("Não há raiz no intervalo")
        
    elseif g(a) == 0
        println("O valor de 'a' ($a) é uma raiz.")
        
    elseif g(b) == 0
        println("O valor de 'b'($b) é uma raiz.")
        
    else
        local x_medio = (a + b)/2.0
        local err = abs(g(x_medio))        
        while err > tol
            println(iteracao , "          ", x_medio, "           " , g(x_medio))            
            if g(a)*g(x_medio) < 0 
                b = x_medio
            else
                a = x_medio
            end
            
            x_medio = (a + b)/2.0
            err = abs(g(x_medio))
            iteracao = iteracao + 1            
        end
        println(iteracao , "          ", x_medio, "           " , g(x_medio))            

        println()
        
        println("Iterações: $iteracao")
        println("Raiz: $x_medio")
        println("f(raiz): $(g(x_medio))")
        return x_medio        
    end     
end