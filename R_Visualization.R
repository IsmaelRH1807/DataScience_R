## @rivas


library(tidyverse)
library(dslabs)
library(ggrepel)
data(stars)
options(digits = 3)

install.packages("dslabs")

mean(stars$magnitude)
sd(stars$magnitude)


stars %>% ggplot(aes(magnitude)) +
                    geom_density()

stars %>% ggplot(aes(temp)) +
          geom_density()

stars %>% filter(temp > 5000 ) %>% 
          ggplot(aes(x = temp, y = magnitude)) +
          scale_y_reverse() +
          scale_x_log10() +
          scale_x_reverse() +
          geom_point() +
          geom_text(aes(label = star), nudge_x = 1) +
          geom_text_repel(aes(label = star))


stars %>% ggplot(aes(x = temp, y = magnitude)) +
  geom_point()


stars %>% ggplot(aes(x = temp, y = magnitude)) +
  scale_y_reverse() +
  scale_x_log10() +
  scale_x_reverse() +
  geom_point() +
  geom_text(aes(label = star), nudge_x = 1) +
  geom_text_repel(aes(label = star))


stars %>% ggplot(aes(x = temp, y = magnitude, color = type, size = 3)) +
  scale_y_reverse() +
  scale_x_log10() +
  scale_x_reverse() +
  geom_point()