library(tidyverse)
library(ggmap)

# Get the data
measles <-read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-25/measles.csv',
                       guess_max = 60000)

summary(measles)
head(measles)
