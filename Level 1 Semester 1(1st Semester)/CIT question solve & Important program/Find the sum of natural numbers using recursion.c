#include<stdio.h>
int addnum(int a){
   if(a != 0){
    return a + addnum(a-1);
   }
   else
    return a;
}
int main()
{
    int num;
    scanf("%d", &num);
    printf("%d", addnum(num));

    return 0;
}
