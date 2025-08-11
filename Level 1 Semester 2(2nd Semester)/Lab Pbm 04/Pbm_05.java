/*
 * Write a Java program to convert seconds to hour, minute and seconds. Go to the editor


Input seconds: 86399
23:59:59

 */

import java.util.Scanner;

public class Pbm_05 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Input seconds: ");
        int seconds = in.nextInt();
        int S = seconds%60;
        int H = seconds/60;
        int M = H%60;
        H = H/60;
        System.out.println(H + ":" + M + ":" + S);
    }
}
