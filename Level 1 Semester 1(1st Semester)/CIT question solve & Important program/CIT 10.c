#include<stdio.h>
void palindrome(){
   char c;
   scanf("%c", &c);
   if( c != '\n'){
    palindrome();
    printf("%c", c);
   }
}
int main()
{
    printf("Input a word to check for palindrome: ");
    palindrome();
}
