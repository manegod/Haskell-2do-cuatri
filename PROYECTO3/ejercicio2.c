#include <stdio.h>

//EJERCICIO 2//
int pepin(int x, int y, int z, int b, int w){
    if(x % 4 == 0){
        printf("%s \n","True");
    }else{
        printf("%s \n","False");
    }
    if(x + y == 0 && y - x == (-1) * z){
        printf("%s \n","True");
    }else{
        printf("%s \n","False");
    }
    if(b && w){
        printf("%s \n","False");
    }else{
        printf("%s \n","True");
    }
    return 0;
}
 //pepin(4, -4, 8, 0, 0)-->DEVUELVE TRUE EN TODAS LAS FUNCIONES//

 int main () {
    int x,y,z,b,w;
printf ("EJERCICIOS PUNTO 2 <3\n");
    printf ("Voy a necesitar un poco mas de data, ingresa un valor 'B'\n");
    scanf ("%d", &b);

    printf ("tambien un valor para 'W'..........\n");
    scanf ("%d", &w);
    printf ("Resultados del ejercicio 2:\n");
    pepin (x,y,z,b,w);
    return 0;
 }
