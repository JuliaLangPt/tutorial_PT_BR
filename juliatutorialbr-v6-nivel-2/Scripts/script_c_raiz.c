#include <stdio.h>
#include <math.h>
double raiz(double a,double b,double c)
{    
    double delta, x1, x2;
        
    if(a != 0)
    {
       delta = (b*b) - (4*a*c);        
       if(delta >= 0)
       {
         x1 = (-b + sqrt(delta))/(2*a);
         x2 = (-b - sqrt(delta))/(2*a);
         return printf("x1= %f, x2= %f \n",x1, x2);
        }        
        else
        {
         return printf("Raízes complexas \n");

         }
      }
      else
       printf("Coeficiente 'a' = 0. Não é um polinômio de grau 2");
   return 0;
}
