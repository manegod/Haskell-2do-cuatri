#include<stdio.h>
#include<stdbool.h>

bool pedir_booleano(char name){
    int a;
    printf("Ingrese un valor booleano para %c\n",name);
    scanf("%d",&a);

    return a;
}

void imprimir_booleano (char name,bool algo){

    if (algo==true)
    {
        printf("El valor de verdad de %c es Verdadero\n",name);
    } else{

        printf("El valor de verdad de %c es Falso\n",name);
    }

}

    int main(){
    char name;
    bool x;
    printf("Ingrese un caracter como variable\n");
    scanf("%c",&name);
    x=pedir_booleano(name);
    imprimir_booleano(name,x);
    return 0;
}

