/*
 * Write a Java program to calculate the modules of two numbers without using any inbuilt modulus operator. Go to the editor


Input the first number : 19
Input the second number: 7
5

 */

import java.util.Scanner;

public class Pbm_15 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Input 1st number: ");
        int a = in.nextInt();

        System.out.println("Input 2nd number: ");
        int b = in.nextInt();

        int div = a/b;
        int r = a-(div*b);
        System.out.println(r);
    }
}
