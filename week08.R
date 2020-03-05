library(tidyverse)
library(ggmap)

# Get the data
measles <-read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-25/measles.csv',
                       guess_max = 60000)

summary(measles)
head(measles)

## some schools have 0 enrollment?!

measles%>%filter(enroll == 0) %>%print(n = Inf)

summary(as.factor(measles$year))
