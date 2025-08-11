/*
 * Write a Java program to find the number of values in a given range
 *  divisible by a given value.
 

For example x = 5, y=20 and p =3, find the number of integers within the
range x..y and that are divisible by p i.e. { i :x ≤ i ≤ y, i mod p = 0
}


5
 */

import java.util.Scanner;

public class Pbm_06 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Input value of X: ");
        int x = input.nextInt();

        System.out.println("Input value of Y: ");
        int y = input.nextInt();

        System.out.println("Input value of P: ");
        int p = input.nextInt();

        int c=0;

        for(int i=x;i<=y;i++){
            if (i%p == 0) {
                 c++;
            }
        }
        System.out.println(c);
    }
}
