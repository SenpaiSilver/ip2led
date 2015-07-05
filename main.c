#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <wiringPi.h>
#include <sr595.h>

#define BYTE_IN		(av[1])
#define DATA_PIN	(atoi(av[2]))
#define CLOCK_PIN	(atoi(av[3]))
#define LATCH_PIN	(atoi(av[4]))

int main(int ac, char** av)
{
	unsigned int i;

	if (ac < 5)
	{
		fprintf(stderr, "Usage: %s <byte> <data> <clock> <latch>\n", av[0]);
		return (EXIT_FAILURE);
	}
	
	wiringPiSetup();
	sr595Setup(100, 8, DATA_PIN, CLOCK_PIN, LATCH_PIN); //8, 10, 12
	
	for (i = 0; i < strlen(BYTE_IN) && i <= 8; ++i)
	{
		digitalWrite(100 + i, BYTE_IN[strlen(BYTE_IN) - i - 1] == '1' ? 1 << i : 0 << i);
	}
	return (EXIT_SUCCESS);
}
