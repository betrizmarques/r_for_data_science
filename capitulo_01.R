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

# pag 16
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy))

# pag 17
ggplot(data = mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))+
  geom_point(mapping = aes(x = displ, y = hwy))

# pag 18
ggplot(data = mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg)+
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE)

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))+
  geom_smooth(mapping = aes(x = displ, y = hwy))

# pag 19
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))+
  geom_point()+
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping = aes(color = class))+
  geom_smooth()

# pag 20
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping = aes(color = class))+
  geom_smooth(
    data = filter(mpg, class == "subcompact"),
    se = FALSE
  )

# pag 22
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut))

?geom_bar

# pag 23
ggplot(data = diamonds)+
  stat_count(mapping = aes(x = cut))

# pag 24
demo <- tribble(
  ~a, ~b,
  "bar_1", 20,
  "bar_2", 30,
  "bar_3", 40
)

ggplot(data = demo)+
  geom_bar(
    mapping = aes(x = a, y = b), stat = "identity"
  )

# pag 25
ggplot(data = diamonds)+
  geom_bar(
    mapping = aes(x = cut, y = after_stat(prop), group = 1)
    )

ggplot(data = diamonds)+
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

# pag 27 
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, colour = cut))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill = cut))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill = clarity))

# pag 28

ggplot(
  data = diamonds,
  mapping = aes(x = cut, fill = clarity)
)+
  geom_bar(alpha = 1/5, position = "identity") # cada nível de clarity começa do zero

ggplot(
  data = diamonds,
  mapping = aes(x = cut, color = clarity)
)+
  geom_bar(fill = NA, position = "identity")

ggplot(data = diamonds)+
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "fill"
  )

ggplot(data = diamonds)+
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "dodge"
  )

# pag 30
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy),
             position = "jitter")

ggplot(data = mpg)+
  geom_jitter(mapping = aes(x = displ, y = hwy))

?position_dodge
?position_fill
?position_identity
?position_jitter
?position_stack

# pag 31

ggplot(data = mpg, mapping = aes(x = class, y = hwy))+
  geom_boxplot()

ggplot(data = mpg, mapping = aes(x = class, y = hwy))+
  geom_boxplot()+
  coord_flip()

# pag 32
nz <- map_data("nz")

ggplot(nz, aes(long, lat, group = group))+
  geom_polygon(fill = "white", color = "black")

ggplot(nz, aes(long, lat, group = group))+
  geom_polygon(fill = "white", color = "black")+
  coord_quickmap()

bar <- ggplot(data = diamonds)+
  geom_bar(
    mapping = aes(x = cut, fill = cut),
    show.legend = FALSE,
    width = 1
  )+
  theme(aspect.ratio = 1)+
  labs(x = NULL, y = NULL)

bar + coord_flip()
bar + coord_polar()
