## @rivas


library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)
data(dslabs)

head(temp_carbon)

temp_carbon %>% .$year %>% max()

temp_carbon %>% filter(!is.na(carbon_emissions)) %>%
  select(year) %>% max()

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  max(year)

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  .$year %>%
  max()

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  select(year) %>%
  max()

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  select(year) %>%
  min()

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  max(.$year)


temp_carbon %>% filter(!is.na(temp_anomaly)) %>%
  select(temp_anomaly) %>% min()

0.82 - (-0.11)


p <-  temp_carbon %>% filter(!is.na(temp_anomaly)) %>%
  ggplot(aes(year,temp_anomaly)) +
  geom_line() 

p1 <- p + geom_vline(aes(xintercept = 0), col = "blue")
p2 <- p + geom_hline(aes(y = 0), col = "blue")

p3 <- p + geom_hline(aes(yintercept = 0, col = blue))
p <- p + geom_hline(aes(yintercept = 0), col = "blue")

p + ylab("Temperature anomaly (degrees C)") +
  ggtitle("Temperature anomaly relative to 20th century mean, 1880-2018") +
  geom_text(aes(x = 2000, y = 0.05, label = "20th century mean", col = "blue"))

p + ylab("Temperature anomaly (degrees C)") +
  ggtitle("Temperature anomaly relative to 20th century mean, 1880-2018") +
  geom_text(aes(x = 2000, y = 0.05, label = "20th century mean"), col = "blue")


p <- p + geom_line(aes(year,land_anomaly), color = "red") 
p <- p + geom_line(aes(year, ocean_anomaly), color = "blue")



data("greenhouse_gases")

greenhouse_gases %>%
  ggplot(aes(x = year, y = concentration)) +
  geom_line() +
  facet_grid(gas ~ ., scales = "free") +
  geom_vline(aes(xintercept = 1850))+
  ylab("Concentration (ch4/n2o ppb, co2 ppm)") +
  ggtitle("Atmospheric greenhouse gas concentration by year, 0-2000")


p <-  temp_carbon %>% filter(!is.na(carbon_emissions)) %>%
  ggplot(aes(year,carbon_emissions)) +
  geom_line() +
  geom_vline(aes(xintercept = 1970), color = "blue")


co2_time <- historic_co2 %>%
  ggplot(aes(year,co2, color = source)) +
  geom_line() +
  scale_x_continuous(limit = c(-3000, 2018))


