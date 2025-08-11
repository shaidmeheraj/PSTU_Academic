/*
 * Write a Java program to accepts an integer and count the factors of the number. Go to the editor


Input an integer: 25
3
 */

import java.util.Scanner;

public class Pbm_07 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Input an integer: ");
        int X = input.nextInt();
        int c=0;
        for(int i =1;i<=X;i++){
            if (X%i==0) {
                c++;
            }
        }
        System.out.println(c);
    }
}
