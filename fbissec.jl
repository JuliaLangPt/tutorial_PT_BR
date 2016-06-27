"""
Metodo da Bisseccao

Calcula uma aproximação para uma raiz da função de f(x)

Entre os intervalo [ao,bo] e a tolerencia de erro daddo por tol.

ex bissec("x^2 - 2*x - 8",-5,5,0.000001)

adaptado de http://goo.gl/pQNh6z
"""

function fbissec(funcao,a,b,tol)

    x = 1
    ao = a
    bo = b
    tol = tol
    interacao = 0
    println("f(x) = ",funcao)
    println()
    
    @eval g(x) = $(parse(funcao))
    
    if (g(ao)*g(bo)<0)
        
        while (abs(bo-ao) > tol)  &&  (interacao<10000000)
            x=(ao+bo)/2
            interacao = interacao+1
            if g(x)*g(ao) > 0
                ao=x
            else
                bo=x
            end
        end
        println("Interações: ",interacao)
        println("Valor da raiz: ",x)
        println("Valor de f(x)= ",round(g(x),8)," com erro menor que ",tol)
    else
        println("Não há raízes no intervalo")
    end    
end