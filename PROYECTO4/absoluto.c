#include <stdio.h>


int absoluto (int x) {
    if (x>=0) {
        printf ("El valor absoluto de X es: %d\n", x);
        return x;
    }
    else {
        x = (x * -1);
        printf ("El valor absoluto de X es: %d\n", x);
        return x;
    }
}

int main () {
    int x;
    printf ("INGRESE UN VALOR DE 'X'\n");
    scanf ("%d", &x);
    absoluto (x);
    return 0;
}