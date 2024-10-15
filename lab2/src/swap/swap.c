#include "swap.h"
#include "stdlib.h"

void Swap(char *left, char *right)
{
	char newSymbol = *left;
	*left = *right;
	*right = newSymbol;
}
