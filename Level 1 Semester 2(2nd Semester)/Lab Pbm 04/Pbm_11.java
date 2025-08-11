/*
 * Write a Java program to reverse a word. Go to the editor


Input a word: dsaf
Reverse word: fasd
 */

import java.util.Scanner;

public class Pbm_11 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Input a word: ");
        String word = in.nextLine();
        word = word.trim();//in summary, word = word.trim(); is used to sanitize the input string by removing any
                             // unnecessary leading or trailing spaces before reversing the word.
        String result = "";
        char[] ch = word.toCharArray();
        for(int i = ch.length-1;i>=0;i--){
            result +=ch[i];
        }

        System.out.println("Reverse word: "+result.trim());
    }
}
