#include <stdio.h>
#include <assert.h>

struct datos_t {
float maximo;
float minimo;
float promedio;
};

struct datos_t stats(int tam, float a[]){

    struct datos_t resultado = {a[0], a[0], 0};
    float promedio1 = 0.0;

    for (int i = 0; i<tam; i++){
        if (a[i]<resultado.minimo){
        resultado.minimo = a[i];
    }
        if (a[i]>resultado.maximo){
        resultado.maximo = a[i];
    }
    promedio1 += a[i];
    
}

resultado.promedio = promedio1/tam;

return resultado;
}




void pedir_arreglo (int tam, float a[]){
    for (int i = 0; i < tam; i++) {
        printf ("Ingrese un entero para la posicion %d\n", i+1);
        scanf ("%f", &a[i]);
    }
}

int main () {
    int tam;
    printf ( "Ingrese un tamaño maximo para su arreglo\n");
    scanf ("%d",&tam);

    float a[tam];

    pedir_arreglo (tam, a);
    assert (tam>0);

    struct datos_t resultado = stats (tam, a);

    float minimo = resultado.minimo;
    float maximo = resultado.maximo;
    float promedio = resultado.promedio;
    

    printf ("El minimo de su lista es:%f, el maximo es:%f, y el promedio de toda la lista es:%f\n",minimo,maximo,promedio);

    return 0;
}

