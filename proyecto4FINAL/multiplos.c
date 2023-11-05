#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

bool todos_pares (int tam, int a[]){
    bool esPar = true; 
    for (int i = 0; i < tam; i++) {
        if (a[i]%2!=0){
            esPar = false;
            break;
        } 

    }
    
return esPar;
}

bool existe_multiplo (int m, int tam, int a[]){
    bool esMultiplo = false; 
    for (int i = 0; i < tam; i++) {
        if (a[i]%m==0){
            esMultiplo = true;
            break;
        }
    }
return esMultiplo;
}

int main (){
    int tam;
    printf ("Ingrese un tamaño maximo para su arreglo\n");
    scanf ("%d", &tam);

    int a[tam];

    for (int i = 0; i < tam; i++){
        printf ("Ingrese un entero para la posicion %d\n", i);
        scanf ("%d", &a[i]);
        }
    int fun;
        printf ("Que funcion desea ejecutar? Escribir 1 para todos_pares o 2 para existe_multiplo?\n");
        scanf ("%d",&fun);
        assert ( fun==1 || fun == 2);

        if (fun == 1) {
            if (todos_pares (tam, a)){
                printf ("Todos los numeros son pares\n");
            } else {
                printf ("No todos los numeros son pares\n");
        }
        } else {
            int m;
            printf ("Ingrese un divisor <3\n");
            scanf ("%d",&m);
                if ( existe_multiplo (m, tam, a)){
                printf ("Al menos un numero es multiplo de %d\n",m);
                } else {
                printf ("Ningun numero es multiplo de %d\n",m);
            }
        }

    return 0;
}