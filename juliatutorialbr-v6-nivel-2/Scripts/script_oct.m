function R = multiplica(x, y)
    R = x*y;
end 

    a = input("Didite valor A");
    b = input("Didite valor B");
    resultado = multiplica(a, b);

    % a virgula utilizada para separar a variável do valor é util para gerar dataframes

    printf("a,%f \n",a);
    printf("b,%f \n",b);
    printf("a*b,%f \n",resultado);