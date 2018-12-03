#include<stdio.h>

int multiplica(float x, float y) 
{
  return(x*y); 
}
  
int main(void)
{
  float a = 5.0;
  float b = 2.0;  
  float resultado = multiplica(a, b);
  
// a virgula utilizada para separar a variável do valor é util para gerar dataframes
  
  printf("a,%f \n",a );
  printf("b,%f \n",b );
  printf("a*b,%f \n",resultado );
    
  return 0;
}
