/*
 * Write a Java program to convert a given string into lowercase. Go to the editor


Input a String: THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG.
the quick brown fox jumps over the lazy dog.
 */

import java.util.Scanner;

public class Pbm_09 {
    public static void main(String[] args){	
     Scanner in = new Scanner(System.in);
     System.out.print("Input a String: ");
	 String line = in.nextLine();
	 line = line.toLowerCase();
	 System.out.println(line); 
	 }
}
