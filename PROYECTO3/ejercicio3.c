#include <stdio.h>

        //EJERCICIO 3//

int lol (int x) {
    x=5;
    return x;
}

int lol2 (int x, int y) {
    x=x+y;
    y=y+y;
    return 0;
}

int main () {
    int x, y;
printf ("EJERCICIOS PUNTO 3 <3\n");
    printf ("INGRESE VALOR PARA X (si, otra vez)\n");
    scanf ("%d", &x);
    printf ("El valor de X en el ejercicio A es: %d\n", lol (x));

    printf ("INGRESE VALOR PARA 'Y'\n");
    scanf ("%d", &y);
    printf ("Los valores de X e Y en el ejercicio B son: %s\n", VoF (lol2 (x, y)));
    return 0;
}