/*
 * Write a Java program to find the penultimate (next to last) word of a sentence. Go to the editor


Input a String: The quick brown fox jumps over the lazy dog.
Penultimate word: lazy


Click me to see the solution
 */

import java.util.Scanner;

public class Pbm_10 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Input a sentence: ");
        String line = in.nextLine();
        String[] words = line.split("[ ]+");
        System.out.println("Penultimate word: "+words[words.length-2]);
    }
}
