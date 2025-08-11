/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CCE;

/**
 *
 * @author shaid
 */
public class practice {
    public static void main(String[] args) {
        // Define the pattern characters
        char[] pattern = {'J', 'a', 'v', 'a'};
        
        // Loop through each row
        for (int i = 1; i <= 4; i++) {
            // Loop to print characters for the current row
            for (int j = 1; j <= i; j++) {
                // Print the character from the pattern array
                System.out.print(pattern[j - 1]);
            }
            
            // Print spaces between characters
            for (int k = i; k < 4; k++) {
                System.out.print(" ");
            }
            
            // Print the characters in reverse order
            for (int l = i; l >= 1; l--) {
                // Skip the first character in the first row
                if (l < 4 || i > 1) {
                    System.out.print(pattern[l - 1]);
                }
            }
            
            // Move to the next line after each row
            System.out.println();
        }
    }
}
}
