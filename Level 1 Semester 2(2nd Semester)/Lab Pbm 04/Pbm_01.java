/*
 * Write a Java program to convert a string to an integer in Java. Go to the editor


Input a number(string): 25
The integer value is: 25
 */

import java.util.Scanner;

public class Pbm_01 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Input a number(string): ");
        String s1 = input.nextLine();
        int result = Integer.parseInt(s1);
        System.out.printf("The integer value is: %d",result);
        System.out.print("\n");
    }
}