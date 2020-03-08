library(tidyverse)
library(ggmap)

# Get the data
measles <-read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-25/measles.csv',
                       guess_max = 60000)

summary(measles)
head(measles)

## some schools have 0 enrollment?!

measles%>%filter(enroll == 0| mmr == -1) %>%print(n = 20)

summary(as.factor(measles$year))


tx_county<-map_data("county") %>% 
  ##filter(region=='texas')%>%
  mutate(state_county = str_c(region, subregion, sep = "_"))

## use county map
ggplot() + 
  geom_polygon(data = tx_county,
               mapping = aes(x = long, y = lat, group = group),
               size = 0.3, 
               fill = "#f5f5f2", 
               color = "darkgray") +
  coord_fixed(1.3) +
  theme_bw()
