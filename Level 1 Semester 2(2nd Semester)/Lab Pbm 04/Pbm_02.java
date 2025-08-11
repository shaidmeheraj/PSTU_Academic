/*
 * Write a Java program to calculate the sum of two integers and return true if the sum is equal to a third integer. Go to the editor


Input the first number : 5
Input the second number: 10
Input the third number : 15
The result is: true
 */

import java.util.Scanner;

public class Pbm_02 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Input 1st number:");
        int n1 = in.nextInt();

        System.out.println("Input 2nd number:");
        int n2 = in.nextInt();

        System.out.println("Input 3rd number:");
        int n3 = in.nextInt();

        if ((n1+n2)==n3) {
            System.out.println("true");
        }
        else{
            System.out.println("false");
        }
    }
}
