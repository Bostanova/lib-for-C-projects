#include "libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	size_t		i;
	char		*dst_tmp;
	const char	*src_tmp;

	dst_tmp = dst;
	src_tmp = src;
	i = 0;
	while (i < n)
	{
		dst_tmp[i] = src_tmp[i];
		i++;
	}
	dst = (void *)dst_tmp;
	return (dst);
}
