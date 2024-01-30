#include <stdio.h>

        //EJERCICIO 5

int eje5a (int i) {
    do { i= (i-1);
    } while (i!=0);
    return i;
}
int eje5aa (int i) {
  while (i!=0) {
    i=0;
  }
    return i;
}

int eje5aa (int x, int y,int i) {
  while (x>=y) {
    x=(x-y);
    i=(i+1);
    printf ("Su nuevo valor de 'X': %d. El de Y: %d. Y el de I es: %d .\n", x, y, i);
  }
    return 0;
}


int main (){
        int y,x,i;
printf ("EJERCICIOS PUNTO 5A!!\n");
printf ("INGRESE UN VALOR PARA 'I'\n");
scanf ("%d", &i);
printf ("Su nuevo valor de 'I' es : %d\n", eje5a(i));
printf ("INGRESE UN VALOR PARA 'I'(de vuelta porque este es el segundo inciso de la consigna)\n");
scanf (" %d", &i);
printf ("Su nuevo valor de 'I' es : %d\n", eje5aa(i));
printf("Ingresando al inciso 5B\n");
  printf ("INGRESE UN VALOR PARA 'I'\n");
scanf (" %d", &i);
printf ("INGRESE UN VALOR PARA 'X'\n");
scanf (" %d", &x);
printf ("INGRESE UN VALOR PARA 'Y'\n");
scanf (" %d", &y);
eje5aa (x, y, i);
    return 0;
}