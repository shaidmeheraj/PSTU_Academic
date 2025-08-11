/*
 * Write a Java program to capitalize the first letter of each word in a sentence. Go to the editor


Input a Sentence: the quick brown fox jumps over the lazy dog.
The Quick Brown Fox Jumps Over The Lazy Dog.

 */

import java.util.Scanner;

public class Pbm_08 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Input a sentence: ");
        String line = in.nextLine();
        String upper_case_line ="";
        Scanner lineScan = new Scanner(line);
        while (lineScan.hasNext()) {
            String word = lineScan.next();
            upper_case_line += Character.toUpperCase(word.charAt(0))+ word.substring(1)+" ";
        }
        System.out.println(upper_case_line.trim());

    }
}
