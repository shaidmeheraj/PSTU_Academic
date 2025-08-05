#include<stdio.h>
double power (int x, int y);
int main()
{
    int base , p;
    printf("Enter the base and p: ");
    scanf("%d%d",&base, &p);
    printf("%d to power %d is %lf", base, p, power(base, p));

return 0;
}
double power (int x, int y){
  double p=1.0;

  if(y>=0){
    while(y--)
    p *= x;
  }
  else{
        while(y++)
    p /= x;
}
    return(p);
}
