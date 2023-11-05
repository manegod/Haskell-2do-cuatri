#include <stdio.h>
#include <assert.h>

int minimo (int x, int y) {
    if (x>y) {
        printf ("El entero menor es %d\n", y);
        return y;
    }
    else{
        printf ("El entero menor es %d\n", x);
        return x;
    }
}

int main () {
    int x, y;
    printf ("INGRESE UN ENTERO 'X'\n");
    scanf ("%d", &x);
    printf ("INGRESE UN ENTERO 'Y' DISTINTO DE 'X'\n");
    scanf ("%d", &y);

    assert (x!=y);

    minimo (x,y);
    
    return 0;
}

/* El ejercicio no especifica el caso x=y, por ende elijo tomarlo como precondicion y aplicarlo en assert */