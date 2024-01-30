#include <stdio.h>

//EJERCICIO 1//
int expre1 (int x, int y) {
  return  x+y+(1);
}

int expre2 (int x, int y, int z) {
    return z*z+y*45-15*x;
}

int expre3 (int x, int y) {
   return y-2 == (x*3+1)%5;
}

int expre4 (int x, int y) {
    return y/2*x;
}

int expre5 (int x, int y, int z) {
    return y<x*z;
}
/*Las expresiones 3 y 5 tienen resultados booleanos, en C devuelven 1 si es Verdadero o 0 si es falso,
por eso creo una nueva funcion para traducir estos valores de verdad.*/

char* VoF (int e) {
    if (e==1) {
        return "True" ;
    }
    return "False" ;
}


int main () {

    int x, y, z;
                        //EJERCICIO 1//
                        printf ("EJERCICIOS PUNTO 1 <3\n");
    printf ("INGRESA UN VALOR PARA 'X' LOKITO\n");
    scanf ("%d", &x);

    printf ("me falto pedirte un valor 'Y',lolololololol\n");
    scanf ("%d", &y);

    printf ("che, y un valor 'Z' no te va?\n");
    scanf ("%d",&z);

    printf ("Resultados del ejercicio 1:\n");
    printf ("El resultado de la primera funcion es: %d\n", expre1(x,y));
    printf ("El resultado de la segunda funcion es: %d\n", expre2 (x, y ,z));
    printf ("El resultado de la tercera funcion es: %s\n", VoF (expre3 (x,y)));
    printf ("El resultado de la cuarta funcion es: %d\n", expre4 (x, y));
    printf ("El resultado de la quinta funcion es: %s\n", VoF(expre5 (x, y ,z)));
    return 0;
}