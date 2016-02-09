#include <stdlib.h>

int		ft_itoa_base_length(int value, int base)
{
	int	nb;
	
	nb = 1;
	while (value >= base)
	{
		value /= base;
		nb++;
	}
	return (nb);
}

int		ft_strlen(char *str)
{
	int	i;

	i = 0;
	while (str[i])
		i++;
	return (i);
}

char	*ft_strdup(char *str)
{
	char	*new;
	int		length;
	int	i;

	i = 0;
	length = ft_strlen(str);
	new = (char *)malloc(sizeof(char) * (length + 1));
	while (str[i])
	{
		new[i] = str[i];
		i++;
	}
	new[i] = '\0';
	return (new);
}

char	*ft_itoa_base(int value, int base)
{
	int				sign;
	char			*str;
	unsigned int	nb;
	int				length;
	int	i;
	char			tab[16] = "0123456789ABCDEF";

	if (base > 16 || base < 2)
		return (NULL);
	sign = 0;
	if (base == 10 && value < 0)
	{
		sign = 1;
		if (value < -2147483647)
			return (ft_strdup("-2147483648"));
		nb = value * -1;
	}
	else
	{
		if (value < 0)
			nb = (unsigned int)(value * - 1);
		else
			nb = value;
	}
	length = ft_itoa_base_length(nb, base);
	str = (char*)malloc(sizeof(char) * (length + sign + 1));
	str[length + sign] = '\0';
	i = length + sign - 1;
	while (i >= 0)
	{
		str[i] = tab[nb % base];
		nb = nb / base;
		i--;
	}
	if (sign)
		str[0] = '-';
	return (str);
}
