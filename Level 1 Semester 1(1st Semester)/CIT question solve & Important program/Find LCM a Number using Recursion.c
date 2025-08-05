#include<stdio.h>
int main()
{
   int n1, n2;
   scanf("%d%d", &n1, &n2);
   printf("LCM = %d", lcm(n1, n2));
}
int lcm(int a, int b)
{
    static int m=0;
    m = m + b;
    if( m%a==0 && m%b==0)
        return m;
    return lcm(a, b);
}
