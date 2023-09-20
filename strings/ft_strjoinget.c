/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoinget.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dduarte- <dduarte-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/14 08:56:46 by dduarte-          #+#    #+#             */
/*   Updated: 2023/08/14 09:13:47 by dduarte-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

char	*ft_strjoinget(char *temp, char *buffer)
{
	size_t	i;
	size_t	j;
	char	*strjoin;

	i = -1;
	j = 0;
	if (!temp)
	{
		temp = (char *)malloc(1 * sizeof(char));
		temp[0] = '\0';
	}
	if (!temp || !buffer)
		return (NULL);
	strjoin = malloc(sizeof(char) * (ft_strlen(temp) + ft_strlen(buffer) + 1));
	if (!strjoin)
		return (NULL);
	if (temp)
		while (temp[++i] != '\0')
			strjoin[i] = temp[i];
	while (buffer[j] != '\0')
		strjoin[i++] = buffer[j++];
	strjoin[ft_strlen(temp) + ft_strlen(buffer)] = '\0';
	free(temp);
	return (strjoin);
}
