#include <stdio.h>
#include <stdlib.h>

#include <wiringPi.h>
#include <sr595.h>

int main(int ac, char** av)
{
	/*
	** av[1] = byte
	** av[2] = data pin
	** av[3] = clock pin
	** av[4] = latch pin
	*/

	if (ac < 5)
	{
		fprintf(stderr, "Usage: %s <byte> <data> <clock> <latch>\n", av[0]);
		return (EXIT_FAILURE);
	}
	return (EXIT_SUCCESS);
}
