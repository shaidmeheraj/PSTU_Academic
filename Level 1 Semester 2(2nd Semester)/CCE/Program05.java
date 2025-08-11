/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CCE;


 import java.util.Scanner;
public class Program05 {
    public static void main(String[] args){
        Scanner ob= new Scanner(System.in);
        int a, b;
        System.out.println("Input first number: ");
        a = ob.nextInt();
        System.out.println("Input Second number: ");
        b = ob.nextInt();
        System.out.println(a +"X"+ b +"="+ (a*b));
    }
}
