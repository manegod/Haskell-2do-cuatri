#include <stdio.h>

//6A
int pedir_entero(char* name) {
    int x;
    printf("Ingresar un valor para la guarda %c\n", *name);
    scanf("%d", &x);
    return x;
}

void imprimir_entero(char* name, int x) {
    printf("EL VALOR DE LA GUARDA %c ES %d\n", *name, x);
}




int main() {
//6A
int x;
    char name;
    int n;
    printf("Ingrese un caracter para su guarda\n");
    scanf(" %c", &name);
    n = pedir_entero(&name);
    imprimir_entero(&name, n);


    return x;
}

