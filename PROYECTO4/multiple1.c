#include <stdio.h>

int main () {
    int x,y,z;

    printf ("INGRESAR UN VALOR PARA X\n");
    scanf ("%d",&x);
    printf ("INGRESAR UN VALOR PARA Y\n");
    scanf ("%d",&y);

    z = x;
    x = x+1;
    y = z + y;
    printf ("LOS NUEVOS VALORES SON: X=%d, Y=%d\n", x, y); 
    return 0;

}