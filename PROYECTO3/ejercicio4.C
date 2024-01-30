#include <stdio.h>

            //EJERCICIO 4 //

int eje4 (int m, int n){
    if (m>=n) { 
        m= 0 ;
    } else {
        m=2;
    }
    return m;
}

int eje4b (int x, int y, int z, int m) {
    if (x<y) {
        m=x;
    } else {
        m=y;
    }
    if (m>=z) {
        m=z;
    } else {
        return m;
    }
    return m;
}


int main () {
printf ("EJERCICIOS PUNTO 4A <3\n");
    int m,n,x,y,z;
       printf ("INGRESE VALOR PARA 'M'\n");
    scanf ("%d", &m);
     printf ("INGRESE VALOR PARA 'N'\n");
    scanf ("%d", &n);
     printf ("En el ejercicio 4A, M vale: %d\n", eje4(m,n));
  
    printf ("EJERCICIOS PUNTO 4B <3\n");

    printf ("INGRESE VALOR PARA X\n");
    scanf ("%d", &x);
    printf ("INGRESE VALOR PARA Y\n");
    scanf ("%d", &y);
    printf ("INGRESE VALOR PARA z\n");
    scanf ("%d", &z);
    printf ("INGRESE VALOR PARA m\n");
    scanf ("%d", &m);
    printf ("VALOR FINAL!!1!: %d\n", eje4b(x,y,z,m));
    return 0;
}