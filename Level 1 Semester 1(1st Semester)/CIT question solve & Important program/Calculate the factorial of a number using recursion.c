#include<stdio.h>
int fact(int a){
   if(a != 0){
    return a * fact(a-1);
   }
   else
    return 1;
}
int main()
{
    int num;
    scanf("%d", &num);
    printf("%d", fact(num));

    return 0;
}

