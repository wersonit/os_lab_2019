#include <stdio.h>
#include <stdlib.h>

#include "swap.h"

int main(int argc, char *argv[])
{
	char ch1 = argv[1][0];
	char ch2 = argv[2][0];

	Swap(&ch1, &ch2);

	printf("%c %c\n", ch1, ch2);
	return 0;
}
