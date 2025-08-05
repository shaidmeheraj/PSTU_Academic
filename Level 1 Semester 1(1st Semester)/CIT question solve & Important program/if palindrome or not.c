#include<stdio.h>
#include<string.h>
void main()
{
    char chk='t';
    char str[30];
    int len, i, j;
    printf("\nEnter a string: ");
    scanf("%s", str);
    len = strlen(str);
    i=0;
    j=len-1;
    while(i<j && chk=='t'){
        if(!(str[i] == str[j])){
           chk = 'f';}
           i++;
           j--;
    }
    if(chk=='t')
        printf("Pelindrome");
    else printf("Not pelindrome");
}
