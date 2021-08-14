#ifndef STDIO_H
#define STDIO_H
#include <string.h>
#include <wchar.h>
#include <stdlib.h>
#include <unistd.h>

void		az_putchar(char c);
void		az_putnbr(int n);
void		az_putstr(const char *s);
void		*az_memset(void *b, int c, size_t len);
void		az_bzero(void *s, size_t n);
void		*az_memcpy(void *dst, const void *src, size_t n);
void		*az_memccpy(void *dst, const void *src, int c, size_t n);
void		*az_memmove(void *dst, const void *src, size_t len);
void		*az_memchr(const void *s, int c, size_t n);
void		*az_memalloc(size_t size);
void		az_memdel(void **ap);
void		az_strclr(char *s);
void		az_striter(char *s, void (*f)(char *));
void		az_striteri(char *s, void (*f)(unsigned int, char *));
void		az_putendl(char const *s);
void		az_putchar_fd(char c, int fd);
void		az_putstr_fd(char const *s, int fd);
void		az_putendl_fd(char const *s, int fd);
void		az_putnbr_fd(int n, int fd);
void		az_putchar_endl(char c);
void		az_putnbr_endl(int n);
void		az_puthex(unsigned int n);
void		az_puthex_pf(unsigned int n, char flag);
void		az_putoctal(int n);
void		az_putunsigned(unsigned int n);
char		*az_strdup(const char *s1);
char		*az_strcpy(char *dst, const char *src);
char		*az_strncpy(char *dst, const char *src, size_t len);
char		*az_strcat(char *s1, const char *s2);
char		*az_strncat(char *s1, const char *s2, size_t n);
char		*az_strchr(const char *s, int c);
char		*az_strrchr(const char *s, int c);
char		*az_strstr(const char *big, const char *little);
char		*az_strnstr(const char *big, const char *little, size_t len);
char		*az_strnew(size_t size);
char		*az_strmap(char const *s, char (*f)(char));
char		*az_strmapi(char const *s, char (*f)(unsigned int, char));
char		*az_strsub(char const *s, unsigned int start, size_t len);
char		*az_strjoin(char const *s1, char const *s2);
char		*az_strtrim(char const *s);
char		**az_strsplit(char const *s, char c);
char		*az_itoa_base(int n, int base);
char		*az_itoa(int n);
char		az_ishex(int n);
char		*az_wchrstr(wchar_t *src, char *dst, size_t dstlen);
size_t		az_strlcat(char *dst, const char *src, size_t size);
size_t		az_strlen(const char *s);
size_t		az_nbrlen(int n);
size_t		az_wchrlen(wchar_t *s);
int			az_strcmp(const char *s1, const char *s2);
int			az_strncmp(const char *s1, const char *s2, size_t n);
int			az_memcmp(const void *s1, const void *s2, size_t n);
int			az_isprint(int c);
int			az_atoi(const char *s);
int			az_isesc(int c);
int			az_isalpha(int c);
int			az_isdigit(int c);
int			az_isalnum(int c);
int			az_isascii(int c);
int			az_isprint(int c);
int			az_tolower(int c);
int			az_toupper(int c);
int			az_islower(int c);
int			az_isupper(int c);
int			az_strequ(char const *s1, char const *s2);
int			az_strnequ(char const *s1, char const *s2, size_t n);
int			az_value_width(int n, int base);
int			az_strbchr(const char *s, int c);
int			az_chrpos(const char *s, int c);

#endif
