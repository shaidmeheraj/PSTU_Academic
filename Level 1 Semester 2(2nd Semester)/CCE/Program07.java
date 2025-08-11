/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CCE;
import java.util.Scanner;
public class Program07 {
    public static void main(String[] args){
        Scanner number=new Scanner(System.in);
        System.out.println("Input a number: ");
        int a;
        a= number.nextInt();
        for(int i=1; i<=10;i++){
            System.out.println(a +"X"+ i +"="+ (a*i));
        }
    }
}
