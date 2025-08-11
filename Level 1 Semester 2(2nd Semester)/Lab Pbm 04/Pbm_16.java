/*
 * Write a Java program to compute the sum of the first 100 prime numbers. Go to the editor


Sum of the first 100 prime numbers: 24133

 */
public class Pbm_16 {
    public static void main(String[] args) {
        int count,sum=0;
        for(int n=1;n<=100;n++){
            count=0;
            for(int i=2;i<=n/2;i++){
                if (n%i==0) {
                    count++;
                    break;
                }
            }
            if (count==0&&n!=1) {
                sum +=n;
            }
        }
        System.out.println("The sum of Prime number from 1 to 100 is:"+sum);
    }
}
