/*
 write a Java program to print the area and perimeter of a circle.

Radius = 7.5

Perimeter is = 47.12388980384689
Area is = 176.71458676442586
 */
package CCE;

import java.util.Scanner;
public class Program11 {
    public static void main(String[] args){
        Scanner a=new Scanner(System.in);
        float radius;
        radius= a.nextFloat();
        double p=3.1416;
        
        System.out.println("Perimeter:"+(2*p*radius));
        System.out.println("Area: "+ (p*radius*radius) );
                
        
    }
}
