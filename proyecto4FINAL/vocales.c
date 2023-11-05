#include <stdio.h>
#include <stdbool.h>

bool es_vocal (char letra) {
if (letra== 'a' ||letra== 'i' ||letra== 'e' ||letra== 'o' ||letra== 'u' ||letra== 'A' ||letra== 'E' ||letra== 'I' ||letra== 'O' ||letra== 'U' ) {
    printf ("'%c' ES UNA VOCAL!\n",letra);
return true;
}
else {
    printf ("'%c' NO ES UNA VOCAL!\n",letra);
    return false;
}
}

int main () {
    char letra;
    printf ("INGRESE UNA LETRA:\n");
    scanf ("%c",&letra);

    es_vocal (letra);
    return 0;
}