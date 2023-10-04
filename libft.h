/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dduarte- <dduarte-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/12 09:29:47 by dduarte-          #+#    #+#             */
/*   Updated: 2023/10/04 09:06:06 by dduarte-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H
# define BUFFER_SIZE 1234

# include <stdlib.h>
# include <unistd.h>
# include <stdarg.h>
# include <stdio.h>

typedef struct s_list
{
	void			*content;
	struct s_list	*next;
}	t_list;
// Get next line
char	*get_next_line(int fd);
char	*ft_read_and_join(int fd, char *temp);
char	*ft_get_line(char *temp);
size_t	ft_strlenget(char *s);
char	*ft_strchrget(char *s, int line_break);
char	*ft_strjoinget(char *temp, char *buffer);
char	*ft_strjoinget(char *temp, char *buffer);
char	*new_temp_aux(char *str);
char	*ft_new_temp(char *temp);
// Printf
int		ft_formats(va_list args, const char format);
int		ft_printf(const char *format, ...);
int		ft_printnbr(int num);
int		ft_printstr(char *s);
int		ft_hex_len(unsigned int n);
int		ft_print_hex(unsigned int n, const char format);
int		ft_ptr_len(unsigned long n);
int		ft_print_ptr(unsigned long long ptr);
int		ft_printchar(char c);
int		ft_printpercent(void);
int		ft_num_len(unsigned int num);
int		ft_print_unsigned(unsigned int n);
void	ft_putstr(char *str);
void	ft_put_hex(unsigned int n, const char format);
void	ft_put_ptr(unsigned long n);
// Libft
int		ft_isalpha(int arg);
int		ft_isdigit(int arg);
int		ft_isalnum(int arg);
int		ft_isascii(int arg);
int		ft_isprint(int arg);
int		ft_strncmp(const char *s1, const char *s2, size_t n);
int		ft_toupper(int n);
int		ft_tolower(int n);
int		ft_atoi(const char	*ptr);
int		ft_memcmp(const void *s1, const void *s2, size_t n);
void	*ft_memmove(void *dest, const void *src, size_t n);
void	*ft_memset(void *str, int c, size_t len);
void	*ft_memcpy(void	*dest,	const void	*src, size_t	n);
void	*ft_memchr(const void *s, int c, size_t n);
void	ft_bzero(void *str, size_t len);
void	*ft_calloc(size_t nmemb, size_t size);
void	ft_putchar_fd(char c, int fd);
void	ft_putstr_fd(char *s, int fd);
void	ft_putendl_fd(char *s, int fd);
void	ft_putnbr_fd(int n, int fd);
size_t	ft_strlen(const	char	*s);
size_t	ft_strlcpy(char *dst, const char *src, size_t size);
size_t	ft_strlcat(char *dst, const char *src, size_t size);
char	*ft_strchr(const char *s, int c);
char	*ft_strrchr(const char *s, int c);
char	*ft_strnstr(const char *big, const char *little, size_t len);
char	*ft_strdup(const char *src);
char	*ft_substr(char	const *s, unsigned int start, size_t len);
char	*ft_strjoin(char const *s1, char const *s2);
char	*ft_strtrim(char const *s1, char const *set);
char	**ft_split(char const *s, char c);
char	*ft_itoa(int n);
char	*ft_strmapi(char const *s, char (*f)(unsigned int, char));
void	ft_striteri(char *s, void (*f)(unsigned int, char*));
int		ft_lstsize(t_list *lst);
t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));
t_list	*ft_lstnew(void *content);
t_list	*ft_lstlast(t_list *lst);
void	ft_lstadd_front(t_list **lst, t_list *new);
void	ft_lstadd_back(t_list **lst, t_list *new);
void	ft_lstdelone(t_list *lst, void (*del)(void*));
void	ft_lstclear(t_list **lst, void (*del)(void*));
void	ft_lstiter(t_list *lst, void (*f)(void *));

#endif 
