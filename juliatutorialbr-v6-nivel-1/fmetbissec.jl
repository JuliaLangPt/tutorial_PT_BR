"""
Metodo da Bisseccao

Calcula uma aproximação para uma raiz da função de f(x)

Entre os intervalo [ao,bo] e a tolerencia de erro daddo por tol.

ex metbissec("x^2 - 2*x - 8",-5,5,0.000001)

adaptado de https://bit.ly/2S5BjlX
"""

function fmetbissec(funcao, a, b, tol = 0.00001)
    
println("f(x) = ",funcao)
println()
    
@eval g(x) = $(parse(funcao)) # transforma a string em uma formula manipulável
   
iteracao = 0
    if g(a)*g(b) > 0 
        println("Não há raiz no intervalo")
        
    else
        x_medio = (a + b)/2.0
        err = abs(g(x_medio))
        
        while err > tol
            println("interação: ", iteracao , " : ", x_medio, ", valor função: ",g(x_medio))
            
            if g(a)*g(x_medio) < 0 
                b = x_medio
            else
                a = x_medio
            end
            
            x_medio = (a + b)/2.0
            err = abs(g(x_medio))
            iteracao = iteracao + 1
            
        end
        
        println()
        println("Interações: $iteracao")
        println("Raiz: $x_medio")
        println("f(raiz): $(g(x_medio))")        
        return x_medio
        
    end     
end