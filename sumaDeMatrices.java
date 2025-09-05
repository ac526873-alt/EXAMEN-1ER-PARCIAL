/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lenguajesdelaprogramacion;

import java.util.Scanner;

/**
 *
 * @author jeatj
 */
import java.util.Scanner;

public class sumaDeMatrices {
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[][] a = new int[2][2], b = new int[2][2], r = new int[2][2];
        
        System.out.println("////presiona Enter al ingresar cada numero////");
        System.out.println(" Matriz A, Ingresa 4 numeros: ");
        for (int x = 0; x < 2; x++) {
            for (int z = 0; z < 2; z++) {
                a[x][z] = sc.nextInt();
            }
        }

        System.out.println(" Matriz B, Ingresa 4 numeros: ");
        for (int x = 0; x < 2; x++) {
            for (int z = 0; z < 2; z++) {
                b[x][z] = sc.nextInt();
            }
        }

       
        for (int x = 0; x < 2; x++) {
            for (int z = 0; z < 2; z++) {
                r[x][z] = a[x][z] + b[x][z];
            }
        }

        System.out.println("Resultado:");
        System.out.println(r[0][0] + " " + r[0][1]);
        System.out.println(r[1][0] + " " + r[1][1]);
    }
}