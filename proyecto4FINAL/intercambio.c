#include <stdio.h>

int main () {
    int x,y,z;
    printf ("INGRESE UN VALOR PARA X\n");
    scanf ("%d", &x);
    printf ("INGRESE UN VALOR PARA Y\n");
    scanf ("%d", &y);

    z = x;
    x = y;
    y = z;
    printf ("Los nuevos valores luego del intercambio son 'Y=%d' y 'X=%d'\n", y, x );

    return 0;
}