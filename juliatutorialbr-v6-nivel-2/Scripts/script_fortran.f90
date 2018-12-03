program script_fortran 


implicit none 
 real a, b, resultado, multiplica
 a = 5.0
 b = 2.0     
 resultado = multiplica(a, b) 
 
 ! a virgula utilizada para separar a variável do valor é util para gerar dataframes
 
 print *,"a,", a 
 print *,"b,", b 
 print *,"a*b,", resultado 
 stop 
end

real function multiplica(x, y) 
implicit none 
  real x, y 
  multiplica = x*y
  return 
end 

