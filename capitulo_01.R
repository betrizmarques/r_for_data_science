# CAPÍTULO 1 - VISUALIZAÇÃO DE DADOS COM GGPLOT2
library(tidyverse)

# carros com motores maiores usam mais combustível que carros com motores menores?
# com o que a relação entre tamanho de motor e eficácia de co combustível se parece?
# é positivo? negativo? linear? não linear?

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))

