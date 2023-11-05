#include <stdio.h>
#include <assert.h>

int prim_iguales (int tam, int a[]){
    int posicion = 1;
    int posicion1 = 1;

    for (int i = 1; i<tam; i++){
       if (a[i]==a[i-1]){
        posicion1++;
    
            if (posicion1>posicion){
            posicion = posicion1;
             }
        } else {
            posicion1 = 1;
        }
    
    }

return posicion;

}

void pedir_arreglo (int tam, int a[]){
  

    for (int i = 0; i < tam; i++) {
        printf ("Ingrese un entero para la posicion %d\n", i+1);
        scanf ("%d", &a[i]);
    }
}


void main () {
    int tam;
        printf ( "Ingrese un tamaño maximo para su arreglo\n");
        scanf ("%d",&tam);
    int a[tam];
        pedir_arreglo (tam, a);
assert (tam>=0);
    int resultado;
    resultado = prim_iguales (tam,a);
    printf ("La longitud del tramo inicial mas largo donde todos sus elementos son iguales es %d \n", resultado);

}