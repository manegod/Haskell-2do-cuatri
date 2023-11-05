#include <stdio.h>
#include <assert.h>

void intercambiar ( int a[], int i, int j) {
int x;


x = a[i];
a[i] = a[j];
a[j] = x;

}



int main () {
    int tam;
    printf ( "Ingrese un tamaño maximo para su arreglo\n");
    scanf ("%d",&tam);
    int a[tam];
    for (int i = 0; i < tam; i++) {
        printf ("Ingrese un entero para la posicion %d\n", i);
        scanf ("%d", &a[i]);
    }
    int i;
    int j;
    printf ("Ingresar un numero de posicion:\n");
    scanf ("%d", &i);
    printf ("Ingresar otro numero de posicion para realizar el intercambio de posiciones:\n");
    scanf ("%d", &j);
    assert (tam>=0);

    intercambiar (a,i ,j);

    printf ("Los elementos de su arreglo son:\n");
    for (int i = 0; i<tam; i++){
    printf ("%d, ", a[i]);
    }
    return 0;
}

/*que recibe un tama˜no m´aximo de arreglo, un arreglo y dos posiciones como argumento, e
intercambia los elementos del arreglo en dichas posiciones. En la funci´on main pedirle al
usuario que ingrese los elementos del arreglo y las posiciones, chequear que las posiciones
est´en en el rango correcto y luego imprimir en pantalla el arreglo modificado.*/