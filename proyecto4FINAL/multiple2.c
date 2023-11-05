#include <stdio.h>

int main () {
    int x,y,z,e,w,p;

    printf ("INGRESAR UN VALOR PARA X\n");
    scanf ("%d",&x);
    printf ("INGRESAR UN VALOR PARA Y\n");
    scanf ("%d",&y);
     printf ("INGRESAR UN VALOR PARA Z\n");
    scanf ("%d",&z);

    e=z;
    w=x;
    p=y;


    z = p+w;
    x = p;
    y = e+w+p;
    printf ("LOS NUEVOS VALORES SON: X=%d, Y=%d, Z=%d\n", x, y,z); 
    return 0;

}