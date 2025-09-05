/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lenguajesdelaprogramacion;

/**
 *
 * @author jeatj
 */
import java.util.Scanner;

public class pascalTriangulo {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("=== Triangulo de Pascal ===");
        System.out.print("Cuantos lados: ");
        int lados = scanner.nextInt();

        int[][] triangulo = new int[lados][lados];

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
        System.out.println("\nTriangulo de Pascal:");
        System.out.println();

        for (int i = 0; i < lados; i++) {

            for (int k = 0; k < lados - i - 1; k++) {
                System.out.print("   ");
            }

            for (int j = 0; j <= i; j++) {
                System.out.printf("%6d", triangulo[i][j]);
            }

            System.out.println();
        }

    }
}
        
 