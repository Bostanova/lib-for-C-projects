#include "libft.h"

void	ft_bzero(void *s, size_t n)
{
	int		i;
	char	*tmp;

	tmp = (char *)s;
	if (n != 0)
	{
		i = 0;
		while (n > 0)
		{
			tmp[i] = '\0';
			i++;
			n--;
		}
		s = tmp;
	}
}
