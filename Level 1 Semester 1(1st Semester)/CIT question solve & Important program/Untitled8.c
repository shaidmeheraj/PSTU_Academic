#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main() {
    char word[1000];
    int alphabets = 0, digits = 0, special_characters = 0;
    int space = 0;

    printf("Enter a sentence: ");
    fgets(word, sizeof(word), stdin);

    for (int i = 0; word[i] != '\0'; i++) {
        if (isalpha(word[i])) {
            alphabets++;
        } else if (isdigit(word[i])) {
            digits++;
        } else if (isspace(word[i])) {
            if (word[i] != '\n') {
                space++;
            }
        } else {
            special_characters++;
        }
    }

    printf("Alphabets: %d\nDigits: %d\nSpecial_characters: %d", alphabets, digits, special_characters);
    printf("\nSpace: %d\n", space);

    return 0;
}

