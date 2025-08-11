/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CCE;

import java.util.Scanner;
public class Program12 {
        public static void main(String[] args){
    Scanner number=new Scanner(System.in);
    int a, b, c;
    float average;
    a = number.nextInt();
    b = number.nextInt();
    c = number.nextInt();
    average = (a+b+c)/3;
    System.out.println("Average:"+(average));
}
}
