#include "revert_string.h"
#include <string.h>
#include <stdlib.h>

void RevertString(char *str)
{
	int str_len = strlen(str);
	char* newStr = malloc(sizeof(char)*str_len);

	for (int i = str_len - 1; i > -1; i--)
	{
		newStr[str_len - 1 - i] = str[i];
	}
	for (int i = 0; i < str_len; i++)
	{
		str[i] = newStr[i];
	}
	free(newStr);
}
