#include <stdio.h>
int main() {
    int a[2][2], b[2][2], r[2][2];
    
    printf("////presiona Enter al ingresar cada numero////\n");
    printf(" Matriz A, Ingresa 4 numeros: \n");
    for (int x = 0; x < 2; x++) {
        for (int z = 0; z < 2; z++) {
            scanf("%d", &a[x][z]);
        }
    }

    printf(" Matriz B, Ingresa 4 numeros: \n");
    for (int x = 0; x < 2; x++) {
        for (int z = 0; z < 2; z++) {
            scanf("%d", &b[x][z]);
        }
    }

    for (int x = 0; x < 2; x++) {
        for (int z = 0; z < 2; z++) {
            r[x][z] = a[x][z] + b[x][z];
        }
    }

    printf("Resultado:\n");
    printf("%d %d\n", r[0][0], r[0][1]);
    printf("%d %d\n", r[1][0], r[1][1]);
    
    return 0;
}