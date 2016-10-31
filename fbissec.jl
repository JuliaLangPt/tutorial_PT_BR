"""
Metodo da Bisseccao

Calcula uma aproximação para uma raiz da função de f(x)

Entre os intervalo [ao,bo] e a tolerencia de erro daddo por tol.

adaptado de http://goo.gl/pQNh6z 

"""
function bisectionc(a,b,tol)
iteracao = 0
    if (a^2 - 2*a)*(b^2 - 2*b) > 0 
        println("Não há raiz no intervalo")
        
    else
        x_medio = (a + b)/2
        err = abs(x_medio^2 - 2*x_medio)
        
        while err > tol
            println("interação: ", iteracao , " : ", x_medio, ", valor função: ",x_medio^2 - 2*x_medio)
            
            if (a^2 - 2*a)*(x_medio^2 - 2*x_medio) < 0 
                b = x_medio
            else
                a = x_medio
            end
            
            x_medio = (a + b)/2
            err = abs(x_medio^2 - 2*x_medio)
            iteracao = iteracao + 1
            
        end
        
    println("interação: ", iteracao , " : ", x_medio, ", valor função: ",x_medio^2 - 2*x_medio)
    return x_medio
        
    end     
end