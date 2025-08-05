#include <stdio.h>
#include <string.h>
#include <ctype.h> // Include this header for the tolower() function

int main() {
    char word[1000];
    int alphabets = 0, digits = 0, special_characters = 0;
    int space = 0;

    printf("Enter a sentence: ");
    fgets(word, sizeof(word), stdin);

    for (int i = 0; word[i] != '\0'; i++) {
        if (isalpha(word[i])) { // Use isalpha() without comparing to 0
            alphabets++;
        } else if (isdigit(word[i])) { // Use isdigit() instead of checking against '0' and '9'
            digits++;
        } else if (isspace(word[i])) { // Use isspace() to check for spaces
            space++;
        } else {
            special_characters++;
        }
    }

    printf("Alphabets: %d\nDigits: %d\nSpecial_characters: %d", alphabets, digits, special_characters);
    printf("\nSpace: %d\n", space);

    return 0;
}

