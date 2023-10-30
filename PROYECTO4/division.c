#include <stdio.h>
#include <assert.h>

struct div_t {
int cociente;
int resto;
};

struct div_t division(int x, int y){
int z;
struct div_t resultado;
z=0;
while (x>=y ){
    x = (x-y);
    z = (z+1);
}

resultado.cociente = z;
resultado.resto = x;
return resultado;

}

int main () {
    int x,y;
    struct div_t resultado;
    printf ("Ingrese un valor para X (dividendo)\n");
    scanf ("%d",&x);
    printf ("Ingrese un valor para Y (divisor)\n");
    scanf ("%d",&y);
    assert (y !=0);
    resultado = division (x,y);
    printf ("El resultado de dividir %d por %d es: %d\n",x,y,resultado.cociente);
    printf ("El resto es: %d\n",resultado.resto);
    return 0;
    }