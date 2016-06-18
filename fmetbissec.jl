"""
Metodo da Bisseccao

Calcula uma aproximação para uma raiz da função de f(x)

Entre os intervalo [ao,bo] e a tolerencia de erro daddo por tol.

ex metbissec("x^2 - 2*x - 8",-5,5,0.000001)

"""

function metbissec(funcao, a, b, tol = 0.00001)
    
println("f(x) = ",funcao)
println()
    
@eval g(x) = $(parse(funcao)) # transforma a string em uma formula manipulável
    
iteracao = 0
    
    while b - a >= tol
        
    x_medio = (a + b)/2.0
        
        println("interação: ", iteracao , " : ", x_medio, ", valor função: ",g(x_medio))
        
        if g(x_medio)*g(a) > 0.0
            a = x_medio            
        else
            b = x_medio            
        end
        iteracao = iteracao + 1
end
    x_medio = (a + b)/2.0
    
    println("interação: ", iteracao , " : ", x_medio, ", valor função: ",g(x_medio))
    
return x_medio
    
end