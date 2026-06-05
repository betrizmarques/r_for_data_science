# CAPÍTULO 1 - VISUALIZAÇÃO DE DADOS COM GGPLOT2
library(tidyverse)

# pag 5
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))

# pag 8
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy, colour = class))

# pag 9 
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# pag 11
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy), size = 3)

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy), shape = 2)

# size = c(0, 14), borda com color
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), shape = 1, color = "blue")

# size = c(15, 18), preenche com color
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), shape = 15, color = "blue")

# size = c(19, 24), borda com color e preenche com fill
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy), shape = 21, color = "blue", fill = "red")

# pag 13
ggplot(data = mpg)
  + geom_point(mapping = aes(x = displ, y = hwy), shape = 21, color = "blue", fill = "red")

# pag 14
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))+
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))+
  facet_wrap(~ class, nrow = 3)

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))+
  facet_wrap(~ cty, nrow = 2)

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))+
  facet_grid(drv ~ cyl)

# pag 15
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))+
  facet_grid(. ~ cyl)
