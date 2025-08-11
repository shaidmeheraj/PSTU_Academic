/*
 * Write a Java program that accepts three integers
from the user and return true if two or more of them (integers ) have
the same rightmost digit. The integers are non-negative. Go to the editor


Input the first number : 5
Input the second number: 10
Input the third number : 15
The result is: true
 */

import java.util.Scanner;

public class Pbm_04 {
        public static void main(String[] args) {
            Scanner in = new Scanner(System.in);
            System.out.println("Input 1st number: ");
            int x = in.nextInt();
            System.out.println("Input 2nd number: ");
            int y = in.nextInt();
            System.out.println("Input 3rd number: ");
            int z = in.nextInt();
    
            System.out.print("The result is: "+test(x, y, z,true));
            System.out.print("\n");
        }
        public static boolean test(int p,int q,int r,boolean xyz)
        {
            return (p % 10 == q % 10) || (p % 10 == r % 10) || (q % 10 == r % 10);
        }
}
