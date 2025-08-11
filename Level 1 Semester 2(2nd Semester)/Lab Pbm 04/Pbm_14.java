/*
 * Write a Java program that accepts two integer
values between 25 to 75 and return true if there is a common digit in
both numbers. Go to the editor


Input the first number : 35
Input the second number: 45
Result: true
 */

import java.util.Scanner;

public class Pbm_14 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Input 1st number: ");
        int a = in.nextInt();

        System.out.println("Input 2nd number: ");
        int b = in.nextInt();

        System.out.println("Result: "+common_digit(a,b));
        
    }
    public static boolean common_digit(int p,int q)
    {
        if(p<25 || q>75)
           return false;
        int x = p%10;
        int y = q%10;
        p /= 10;
        q /= 10;
        return (p==q ||p==y||x==q||x==y);   
    }
}
