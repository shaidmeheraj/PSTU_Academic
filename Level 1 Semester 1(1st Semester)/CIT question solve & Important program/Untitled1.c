#include<stdio.h>
int main()
{
    int i, j, row;
    int num=1;
    scanf("%d", &row);
    for(i=1; i<=row; i++){
      for(j=1; j<=i; j++){
        printf("%d", num);
        num = 1 - num;
      }
      printf("\n");
    }
    return 0;
}
