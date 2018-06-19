#include <ctype.h>
#include <string.h>
#include <stdio.h>

char *
abbreviate(const char * phrase)
{
    if (phrase == NULL || strlen(phrase) == 0)
    {
        return NULL;
    }

    char * acronym = "";
    char * token = NULL;
    char copy[512];

    strcpy(copy, phrase);

    token = strtok(copy, " -");
    asprintf(&acronym, "%s%c", acronym, toupper(*token));

    while(token != NULL)
    {
        token = strtok(NULL, " -");
        if (token != NULL)
        {
            asprintf(&acronym, "%s%c", acronym, toupper(*token));
        }
    }

    return (char *)acronym;
}
