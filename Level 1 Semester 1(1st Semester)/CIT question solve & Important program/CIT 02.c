#include<stdio.h>
int main()
{
    int r, i, j, space;
    int n=1;
    scanf("%d", &r);
    for(i=1; i<=r; i++){
        for(space=1; space<=r-i; space++){
            printf(" ");
        }
        for(j=1; j<=i; j++){
            printf("%d ", n );
            n++;
        }
        printf("\n");
    }
}
