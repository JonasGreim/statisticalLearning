# - Use the starwars dataset provided by the dplyr library
library(dplyr)
library(ggplot2)

# - Inspect the the dataset
help(starwars)
summary(starwars)

# - Use ggplot to produce a scatterplot height versus mass
# - Find a strategy to plot the data such that you see the relationship between height and mass without being obscured by the obvious outlier.
ggplot(data = starwars, aes(x = height, y = mass)) +
  geom_point() +
  geom_smooth(method = "lm") +
  ylim(c(0, 250))

# - Identify the three most frequent eye
# - Plot height versus mass stratified by eye color for these eye colors
ggplot(data = starwars, aes(x = height, y = mass)) +
  geom_point(color = eye_color) +
  geom_smooth(method = "lm") +
  ylim(c(0, 250))


