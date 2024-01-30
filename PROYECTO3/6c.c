#include<stdio.h>
#include<stdbool.h>


 int pedir_entero(char name){
        int x;
        printf("Ingrese un valor para la variable %c\n",name);
        scanf("%d",&x);
        return x;

    }
  
    void imprimir_entero(char name,int x){

    printf("El valor de la variable %c es %d\n",name,x);
    }
int main(){
    
    int x=pedir_entero('x');
    int y=pedir_entero('y');
    int z=pedir_entero('z');
    int m=pedir_entero('m');
   
    if (x<y){
        m=x;
    }else {
       m=y;
    }
    imprimir_entero('x',x);
    imprimir_entero('y',y);
    imprimir_entero('z',z);
    imprimir_entero('m',m);

    if (m<z){
    }else{
        m=z;
    }
    imprimir_entero('x',x);
    imprimir_entero('y',y);
    imprimir_entero('z',z);
    imprimir_entero('m',m);
    return 0;
}


