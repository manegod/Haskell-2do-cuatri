#include <stdio.h>
#include <assert.h>


void pedir_arreglo (int n_max, int a[]){
  

    for (int i = 0; i < n_max; i++) {
        printf ("Ingrese un entero para la posicion %d\n", i+1);
        scanf ("%d", &a[i]);
    }
}

void imprimir_arreglo (int n_max, int a[]) {
   
    printf ("Los elementos de su arreglo son:\n");
    for (int i = 0; i<n_max; i++){
    printf ("%d, ", a[i]);
    }
}

int main () {
    int n_max;
    printf ( "Ingrese un tamaño maximo para su arreglo\n");
    scanf ("%d",&n_max);
    int a[n_max];
    pedir_arreglo (n_max, a);
    imprimir_arreglo (n_max, a);
    assert (n_max>=0);
    return 0;
}