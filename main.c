#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
	if (argc == 1)
		printf("\e[1;31m Getting started...\n \e[0m");
	else
		printf("\e[1;33m Process completed!\n \e[0m");
	
	return (0);
}
