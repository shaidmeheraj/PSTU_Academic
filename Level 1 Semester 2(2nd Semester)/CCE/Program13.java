/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CCE;

import java.util.Scanner;

public class Program13 {
    
    public static void main(String[] args){
        Scanner a=new Scanner(System.in);
        float width, height;
        width= a.nextFloat();
        height= a.nextFloat();
        
        System.out.println("Perimeter is 2* "+(2*(width+height)));
}
