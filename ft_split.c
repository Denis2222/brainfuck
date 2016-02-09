#include <stdlib.h>

int	ft_isspace(char c)
{
	if (c == ' ' || c == '\n' || c == '\t' || c == '\v')
		return (1);
	return (0);
}

int	ft_split_count_word(char *str)
{
	int	nb;
	int i;
	int	isword;

	i = 0;
	isword = 0;
	nb = 0;
	while (str[i])
	{
		if (ft_isspace(str[i]))
		{
			isword = 0;
		}
		else
		{
			if (isword == 0)
			{
				isword = 1;
				nb++;
			}
		}
		i++;
	}
	return (nb);
}

int	ft_split_word_start(char *str, int word)
{
	int	nb;
	int i;
	int	isword;

	i = 0;
	isword = 0;
	nb = 0;
	while (str[i])
	{
		if (ft_isspace(str[i]))
		{
			isword = 0;
		}
		else
		{
			if (isword == 0)
			{
				isword = 1;
				nb++;
				if (word == nb)
					return (i);
			}
		}
		i++;
	}
	return (0);
}

int	ft_split_word_length(char *str, int word)
{
	int	nb;
	int i;
	int	isword;
	int	length;

	i = 0;
	isword = 0;
	nb = 0;
	length = 0;
	while (str[i])
	{
		if (ft_isspace(str[i]))
		{
			isword = 0;
		}
		else
		{
			if (isword == 0)
			{
				isword = 1;
				nb++;
			}
			if (nb == word)
				length++;
		}
		i++;
	}
	return (length);
}

char **ft_split(char *str)
{
	char **tab;
	int	words;
	int	c;
	int	clength;
	int cstart;
	int	i;

	words = ft_split_count_word(str);
	tab = (char**)malloc(sizeof(char*) * (words + 1));
	c = 0;
	while (c < words)
	{
		clength = ft_split_word_length(str, c + 1);
		cstart = ft_split_word_start(str, c + 1);
		tab[c] = (char*)malloc(sizeof(char) * (clength + 1));
		i = 0;
		while (i < clength)
		{
			tab[c][i] = str[cstart + i];
			i++;
		}	
		tab[c][i] = '\0';
		c++;
	}
	tab[c] = NULL;
	return (tab);
}
