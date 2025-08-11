/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CCE;

import java.util.Scanner;
public class Program06 {
    public static void main(String[] args){
        Scanner number= new Scanner(System.in);
        int a, b;
        System.out.println("Input first number:");
        a= number.nextInt();
        System.out.println("Input Second number:");
        b= number.nextInt();
        System.out.println(a +" + "+ b +" = "+ (a+b));
        System.out.println(a +" - "+ b +" = "+ (a-b));
        System.out.println(a +" X "+ b +" = "+ (a*b));
        System.out.println(a +" / "+ b +" = "+ (a/b));
        System.out.println(a + " mod "+ b +" = "+ (a%b));
    }
}
