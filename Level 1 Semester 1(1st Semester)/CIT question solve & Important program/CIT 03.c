#include<stdio.h>
int main()
{
    int r, i, j, space;
    scanf("%d", &r);
    for(i=1; i<=r; i++){
        for(space=1; space<=r-i; space++){
            printf(" ");
        }
        for(j=1; j<=i; j++){
            printf("%c", 64+j);

        }
        for(j=i-1; j>=1; j--){
            printf("%c", 64+j);

        }


        printf("\n");

    }
}

