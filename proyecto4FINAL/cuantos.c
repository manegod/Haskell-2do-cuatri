#include <stdio.h>
#include <assert.h>


struct comp_t {
int menores;
int iguales;
int mayores;
};


struct comp_t cuantos(int tam, int a[], int elem){

struct comp_t resultado = {0,0,0};
    for (int i = 0; i<tam; i++){
        if (a[i]==elem){
            resultado.iguales++;
        } else {
            if (a[i]>elem){
                resultado.mayores++;
            } else {
                if (a[i]<elem){
                    resultado.menores++;
                }
            }
        }
    }
    return resultado;
}


void pedir_arreglo (int tam, int a[]){
  

    for (int i = 0; i < tam; i++) {
        printf ("Ingrese un entero para la posicion %d\n", i+1);
        scanf ("%d", &a[i]);
    }
}


int main () {

    int elem;
   
    int tam;

    printf ("Ingrese un numero mayor a 0\n");
    scanf("%d",&elem);
    assert (elem>0);

    printf ( "Ingrese un tamaño maximo para su arreglo\n");
    scanf ("%d",&tam);

    int a[tam];
    pedir_arreglo (tam, a);

   struct  comp_t resultado = cuantos (tam, a, elem);

    int menores = resultado.menores;
    int mayores = resultado.mayores;
    int iguales = resultado.iguales;


    printf ("Menores al numero ingresado: %d\nIguales al numero ingresado: %d\nMayores al numero ingresado:%d\n",menores, iguales, mayores);
    
    return 0;
    
}