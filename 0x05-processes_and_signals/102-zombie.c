#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
* infinite_while - infinite loop
* Return: 0 when exit
*/

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
* main - Function to fork pid
* Return: 0
*/
int main(void)
{
pid_t pid;
size_t i = 0;

while (i < 5)
{
pid = fork();
if (pid == 0)
exit(0);
else
printf("Zombie process created, PID: %d\n", pid);
i++;
}
return (infinite_while());
}
