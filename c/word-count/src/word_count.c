#include <stdio.h>
#include <string.h>
#include "word_count.h"

static word_count_word_t * current_word = NULL;

/*
 * returns 0 if the word does not exist in the list of words.
 * returns 1 if the word does exist in the list of words.
 */
int
add_word(char * word, word_count_word_t * words)
{
    word_count_word_t * word_count_word = calloc(1, sizeof(word_count_word_t));

    if (current_word != NULL)
    {
        current_word->next = word_count_word;
    }

    current_word =
}

int
word_count(const char * input_text, word_count_word_t * words)
{
    int num_words = 0, num_words_unique = 0;
    char * token;
    char copy[MAX_WORDS * MAX_WORD_LENGTH + 1];

    strcpy(copy, input_text);

    token = strtok(copy, " ,\n");
    while (token != NULL)
    {
        num_words++;
        if (num_words > MAX_WORDS)
        {
            return EXCESSIVE_NUMBER_OF_WORDS;
        }

        if (strlen(token) > MAX_WORD_LENGTH)
        {
            return EXCESSIVE_LENGTH_WORD;
        }

        if (words->next == NULL)
        {
            strcpy(words->text, token);
            words->next = malloc(
        }

        if (seen_before(token, words) == 0)
        {
            num_words_unique++;
        }

        token = strtok(NULL, " ,\n");
    }

    return num_words_unique;
}
