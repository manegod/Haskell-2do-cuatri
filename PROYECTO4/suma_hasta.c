#include <stdio.h>

int suma_hasta (int n) {
    if (n>=0) {
        int sumatoria = 0;

        for (int i=1; i<=n; i++) {
            sumatoria +=i;  //+= es un operador abreviado que significa "sumar y asignar". 
            //Es equivalente a escribir sumatoria = sumatoria + i;
        }
        return sumatoria;
    }
    else {
        printf ("ERROR. INGRESE UN VALOR POSITIVO.");
        return -1;
    }

}

int main () {
    int n;
    int resultado;

    printf ("INGRESE UN NUMERO NATURAL\n");
    scanf ("%d",&n);

    resultado = suma_hasta (n);
    if (resultado !=-1){
    printf ("La sumatoria de %d es: %d\n", n, resultado);
    }
    return 0;
}