/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CCE;

/**
 *
 * @author shaid
 */
public class Program14 {
        public static void main(String[] args) {
        int numRows = 13;
        int numCols = 30;

        for (int i = 0; i < numRows; i++) {
            for (int j = 0; j < numCols; j++) {
                if (i % 2 == 0) {
                    System.out.print("* ");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println("=");

            // Alternate the rows with and without stars
            if (i % 2 == 0) {
                System.out.print(" ");
            }
        }
    }
    
}
