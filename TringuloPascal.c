#include <stdio.h>
int main() {
    int lados;
    printf("=== Triangulo de Pascal ===\n");
    printf("Cuantos lados: ");
    scanf("%d", &lados);
    int triangulo[lados][lados];
    for (int i = 0; i < lados; i++) {
        for (int j = 0; j < lados; j++) {
            triangulo[i][j] = 0;
        }
    }
    for (int i = 0; i < lados; i++) {
        triangulo[i][0] = 1;
        for (int j = 1; j <= i; j++) {
            if (j == i) {
                triangulo[i][j] = 1;
            } else {
                triangulo[i][j] = triangulo[i - 1][j - 1] + triangulo[i - 1][j];
            }
        }
    }
    printf("\nTriangulo de Pascal:\n\n"); 
    for (int i = 0; i < lados; i++) {
        for (int k = 0; k < lados - i - 1; k++) {
            printf("   ");
        }
        for (int j = 0; j <= i; j++) {
            printf("%6d", triangulo[i][j]);
        }
        
        printf("\n");
    }
    return 0;
}