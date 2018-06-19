#include <stdio.h>
#include <string.h>
#include "word_count.h"

int
word_count(const char * input_text, word_count_word_t * words)
{
    char * token;
    char copy[MAX_WORDS * MAX_WORD_LENGTH + 1];
    strcpy(copy, input_text);

    token = strtok(copy, " ,\n");
    while (token != NULL)
    {
        printf("%s\n", token);
        token = strtok(NULL, " ,\n");
    }

    return words->count;
}
