#include<stdio.h>
int gcd(int a, int b){
   if(b != 0){
    return gcd(b, a%b);
   }
   else return a;
}
int lcm(int a, int b){
   return (a*b)/gcd(a,b);
}
int main()
{
    int n1, n2;
    scanf("%d%d", &n1, &n2);
    int result= lcm(n1, n2);
    printf("%d", result);
    return 0;
}
