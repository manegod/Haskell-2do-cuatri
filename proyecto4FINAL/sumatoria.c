#include <stdio.h>
#include <assert.h>

int sumatoria (int tam, int a[]){
    int suma=0;
    for (int i=0; i<tam; i++){
        suma += a[i];
    }    
    return suma;
}



void pedir_arreglo (int tam, int a[]){
  

    for (int i = 0; i < tam; i++) {
        printf ("Ingrese un entero para la posicion %d\n", i+1);
        scanf ("%d", &a[i]);
    }
}


int main () {
    int tam;
    printf ( "Ingrese un tamaño maximo para su arreglo\n");
    scanf ("%d",&tam);
    int a[tam];
    pedir_arreglo (tam, a);
    int resultado = sumatoria (tam,a);
    
    printf ("La sumatoria de los elementos del arreglo es: %d\n", resultado);
    assert (tam>=0);
    return 0;
}