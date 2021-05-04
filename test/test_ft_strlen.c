#include <stdio.h>

#include "../libasm.h"

int	main(int argc, char **argv)
{
	char	*str;
	char	*str2;

	str = NULL;
	str2 = "Hello World!\n";
	if (argc == 2)
		printf("ft_strlne(%s): %ld\n", argv[1], ft_strlen(argv[1]));
	else
	{
		printf("ft_strlne(%s): %ld\n", str2, ft_strlen(str2));
		printf("ft_strlne(%s): %ld\n", str, ft_strlen(str));
	}
	return (0);
}
