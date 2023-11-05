#include <stdio.h>
#include <limits.h>


int minimo_pares(int tam, int a[]){
    int posicion2;
    int minpar = INT_MAX;
    posicion2 = 0;
    while (posicion2 <= tam){
        if (a[posicion2]%2==0 && minpar>a[posicion2]){
            minpar=a[posicion2];  
            posicion2 = posicion2 + 1;
       }
        else 
        {
            posicion2 = posicion2 + 1;
        }
        
    }
    return minpar;
}
    




int minimo_impares(int tam, int a[]){
int posicion;
int minimpar= INT_MAX;
posicion = 0;
while ( posicion <= tam){
    if (a[posicion]%2!=0  && minimpar>a[posicion]){
        minimpar = a[posicion];
    } 
    posicion = posicion + 1;
}
    return minimpar;
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
int minpar;
minpar = minimo_pares (tam, a);
printf ("El minimo par es %d\n", minpar);

int minimpar;
minimpar = minimo_impares (tam, a);
printf ("El minimo impar es %d\n", minimpar);
return 0;
}