#include <unistd.h>
#include <stdlib.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

char *initmem(void)
{
	int		sizetab;
	int		i;
	char	*mem;

	sizetab = 5000;
	i = 0;
	mem = (char*)malloc(sizeof(char) * sizetab + 1);
	while (i < sizetab)
	{
		mem[i] = 0;
		i++;
	}
	mem[i] = '\0';
	return (mem);
}

void	brainfuck(char *code, char *mem)
{
	int	c;
	int	i;
	int	loop;

	c = 0;
	i = 0;
	while (code[c])
	{
		if (code[c] == '>')
			i++;
		if (code[c] == '<')
			i--;
		if (code[c] == '.')
			ft_putchar(mem[i]);
		if (code[c] == '+')
			mem[i]++;
		if (code[c] == '-')
			mem[i]--;
		if (code[c] == ']')
		{
			loop = 1;
			while (loop)
			{
				c--;
				if (code[c] == ']')
					loop++;
				else if (code[c] == '[')
					loop--;
			}
			c--;
		}
		if (code[c] == '[')
		{
			if (mem[i] == 0)
			{
				loop = 1;
				while (loop)
				{
					c++;
					if (code[c] == '[')
						loop++;
					else if (code[c] == ']')
						loop--;
				}
			}
		}
		c++;
	}
}

int	main(int ac, char **av)
{
	char	*mem;

	if (ac == 2)
	{
		mem = initmem();
		brainfuck(av[1], mem);
	}
	return (0);
}
