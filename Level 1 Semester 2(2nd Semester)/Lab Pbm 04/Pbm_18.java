/*
 * Write a Java program to create a new string of 4
copies of the last 3 characters of the original string. The length of
the original string must be 3 and above. Go to the editor


3.03.03.03.0
 */
public class Pbm_18 {
    public static void main(String[] args) {
        String main_string = "Python 3.0";

        String last_three_String = main_string.substring(main_string.length() - 3);
        System.out.println(last_three_String + last_three_String + last_three_String + last_three_String);
    }
}
