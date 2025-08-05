#include<stdio.h>
#include<string.h>
#include<ctype.h>
int main()
{
    char word[1000];
    int alphabets=0, digits=0, special_characters=0;
    int space=0;
    fgets(word, sizeof(word), stdin);

    for(int i=0; i< strlen(word); i++){
         word[i] = tolower(word[i]);

        if(isalpha(word[i])){
            alphabets++;
        }
        else if(isdigit(word[i])){
            digits++;
        }
        else if(isspace(word[i])){
            space++;
        }
        else
            special_characters++;
    }
    printf("Alphabets: %d\nDigits: %d\nSpecial_characters: %d", alphabets, digits, special_characters);
    printf("\nspace =%d", space);
    return 0;
}
