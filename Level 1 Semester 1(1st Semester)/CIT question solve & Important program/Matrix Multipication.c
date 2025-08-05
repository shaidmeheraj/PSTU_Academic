#include<stdio.h>
int main()
{
    int r1, c1, r2, c2, a[100][100], b[100][100];
    int i, j, k;
    int sum=0, result[100][100];
    printf("First matrix: ");
    scanf("%d%d", &r1,&c1);
    printf("Second matrix: ");
    scanf("%d%d", &r2, &c2);
    if(c1!=r2)
        printf("Error!");
    else
    {
        for(i=0; i<r1; i++)
        {
            for(j=0; j<c1; j++)
            {
                printf("Element of first martrix a%d%d: ", i+1, j+1);
                scanf("%d", &a[i][j]);
            }
        }
        for(i=0; i<r2; i++)
        {
            for(j=0; j<c2; j++)
            {
                printf("Element of first martrix b%d%d: ", i+1, j+1);
                scanf("%d", &b[i][j]);
            }
        }
        for(i=0; i<r1; i++)
        {
            for(j=0; j<c2; j++)
            {
                for(k=0; k<c1; k++)
                {
                    sum = sum + a[i][k]*b[k][j];

                }
                    result[i][j]=sum;
                    sum=0;
            }
        }
        for(i=0; i<r1; i++)
        {
            for(j=0; j<c2; j++)
            {
                printf("%d \t", result[i][j]);
            }
                    printf("\n");
        }

    }
}
