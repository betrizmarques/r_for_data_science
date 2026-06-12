# CAPÍTULO 3: TRANSFORMAÇÃO DE DADOS COM DPLYR

# pag 43
library(tidyverse)
library(nycflights13)

# pag 44
flights

# pag 46
filter(flights, month == 1, day == 1)

jan1 <- filter(flights, month == 1, day == 1)

(dec25 <- filter(flights, month == 12, day == 25))

# pag 47
filter(flights, month = 1)

sqrt(2) ^ 2 == 2
1/49 * 49 == 1

near(sqrt(2) ^2, 2)
near(1/49 * 49, 1)

# pag 48
filter(flights, month == 11 | month == 12)

filter(flights, month %in% c(11, 12))

filter(flights, !(arr_delay > 120 | dep_delay > 120))

filter(flights, arr_delay <= 120, dep_delay <= 120)

NA > 5

10 == NA

NA + 10

# pag 49
NA/ 2

NA == NA

# x é a idade de maria. ñ sabemos sua idade
x <- NA

# y é a idade de joão ñ sabemos sua idade
y <- NA

# maria e joão têm a mesma idade?
x == y
# não sabemos

is.na(x)

df <- tibble(x = c(1, NA, 3))

filter(df, x > 1)

filter(df, is.na(x) | x > 1)

