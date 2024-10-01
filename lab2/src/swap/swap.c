#include "swap.h"

void Swap(char *left, char *right)
{
	char newSymbol = *left;
	*left = *right;
	*right = newSymbol;
}
