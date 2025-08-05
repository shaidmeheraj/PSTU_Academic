#include<stdio.h>
void prime(int a){
    int flag=0;
  for(int i=2; i<a-1; i++){
    if((a%i)==0){
        flag++;
        break;
    }
  }
  if(flag==0) printf("Prime Number\n");
  else printf("Not prime number\n");
}
void armstrong(int b){
   int sum=0;
   int temp =b;
   int r;
   while(temp!=0){
    r = temp %10;
    sum = sum + r*r*r;
    temp = temp/10;
   }
   if(sum==b){
    printf("Armstrong number");
   }
   else
    printf("Not Armstrong number");
 }

int main()
{
    int n1;
    scanf("%d", &n1);

    prime(n1);
    armstrong(n1);

    return 0;

}
