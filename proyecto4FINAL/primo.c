#include <stdio.h>

#include <stdbool.h>

bool primo (int num){
    if (num <= 1){
        return false;
    }
    for (int i = 2; i*i <= num; i++){
        if (num % i == 0){
            return false;
        }
    }
    return true;
}

int nesimo_primo (int N){
    if (N<=0){
        return -1;
    }

int puedeser = 2;
int posibles_primos = 0;

while (posibles_primos<N){
    if ( primo (puedeser)) {
        posibles_primos++;
    }
    puedeser++;
}
return puedeser -1;
}

int main (){

int N;

    printf (" Ingrese un valor para N\n");
    scanf ("%d", &N);

    while (N<=0){
        printf ("ERROR. El valor de N debe ser positivo. Ingrese un nuevo valor\n");
        scanf ("%d", &N);
    }

int resultado = nesimo_primo (N);

if (resultado == -1){
    printf ("ERROR. El valor de N debe ser positivo\n");
}   else {
    printf ("El %d-esimo numero primo es %d\n", N,resultado);
}

return 0;
}