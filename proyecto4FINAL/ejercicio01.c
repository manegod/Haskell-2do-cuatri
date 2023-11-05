#include <stdio.h>
#include <assert.h>


void hola_hasta (int n) {
while (n>0)
{
    printf ("Hola\n");
    n=(n-1);
}
}



int main () {
    int n;
    printf ("INGRESE UN VALOR MAYOR A 0 PARA 'N'\n");
    scanf ("%d", &n);
    assert (n>0);
    hola_hasta (n);
    return 0;
}