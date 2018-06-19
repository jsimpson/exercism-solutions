#include <ctype.h>
#include <string.h>
#include "isogram.h"

/* returns -1 if c is not an alphabetic character */
int c_to_n(char c)
{
    int n = -1;
    static const char * const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char * p = strchr(alphabet, toupper((unsigned char)c));

    if (p)
    {
        n = p - alphabet;
    }

    return n;
}

bool
is_isogram(const char phrase[])
{
    char letters[26] = {0};

    for (unsigned long i = 0; i < strlen(phrase); i++)
    {
        const char c = phrase[i];
        int index = c_to_n(c);
        if (index == -1)
        {
            continue;
        }

        if (letters[index] == 0)
        {
            letters[index] += 1;
        }
        else
        {
            return false;
        }
    }

    return true;
}
