#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

typedef char clave_t;
typedef int valor_t;

struct asoc {
    clave_t clave;
    valor_t valor;
};

bool asoc_existe (int tam, struct asoc a[], clave_t c){
    bool variable = false;
    for (int i = 0; i<tam; i++){
        if (c == a[i].clave) {
            variable = true;
        } 
    }
    return variable;
}

void pedir_arreglo1 (int tam, struct asoc a[]){
    for (int i = 0; i < tam; i++) {
        printf ("Ingrese una clave para la posicion %d\n", i+1);
        scanf (" %s", &a[i].clave);
        
    }
}
void pedir_arreglo2 (int tam, struct asoc a[]){
    for (int i = 0; i < tam; i++) {
        
        printf ("Ingrese un valor para la posicion %d\n", i+1);
        scanf (" %d", &a[i].valor);
    }
}

int main () {
    int tam;
    printf ( "Ingrese un tamaño maximo para su arreglo\n");
    scanf (" %d",&tam);
    struct asoc a[tam];

    pedir_arreglo1 (tam, a);
    pedir_arreglo2 (tam, a);   

    assert (tam>=0);

    clave_t c;

    printf ( "Ingrese una clave\n");
    scanf (" %c",&c);

    bool valor_verdad = asoc_existe (tam, a, c);
    
        if (valor_verdad == true){
            printf ("La clave ingresada existe.\n");
        } else {
            printf ("La clave ingresada no existe.\n");
        }
    

    return 0;
}