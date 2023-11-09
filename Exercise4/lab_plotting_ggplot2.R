# load ggplot2 library
library(ggplot2)
library(tidyverse)

# print the first lines of data frame
# diamonds (data set comes with ggplot2)
head(diamonds, n = 1) # only 1 row

# Dimensions
dim(diamonds) # Results: number of rows, number of columns

# sample a small subset of diamonds
diamonds.small <- diamonds[sample(dim(diamonds)[1],
                                  100),] # create small table 100x10

# scatterplot with point colours according to
# variable 'color' and shape according to
# variable 'cut'
qplot(x = carat, y = price, data = diamonds.small,
      colour = color, shape = cut, geom = "point")

# scatterplot with a smoothing line
## smooth geom represents a trendline -> helps visualize the trend in the data
qplot(x = carat, y = price, data = diamonds.small,
      geom = c("point", "smooth"))

# boxplot
qplot(x = color, y = price / carat, data = diamonds.small,
      geom = "boxplot")

# barplot
qplot(x = color, data = diamonds.small, geom = "bar")

# histogram and density use binwidth to
# change bin sizes of histogram
qplot(carat, data = diamonds, geom = c("histogram"))

qplot(carat, ..density.., data = diamonds, geom = c("histogram",
                                                    "density"))

# facets: syntax for faceting formular:
# row_var ~ col_var
qplot(carat, data = diamonds, geom = "density",
      facets = color ~ .) # separate panels (facets) for each unique value of the "color" variable

qplot(carat, data = diamonds, geom = "density",
      facets = . ~ color)


# Create a data frame with nonsense data
df <- data.frame(X = c(1, 2, 3, 1.5, 2.6, 3.5),
                 m = c(1, 2, 2, 2, 3, 4), sd = c(0.001, 0.05,
                                                 0.1, 0.01, 0.5, 0.03), group = c("A", "A",
                                                                                  "A", "B", "B", "B"))

# Plot m=means and sd=standard deviations
p <- ggplot(df, aes(x = X, y = m, colour = group)) + # aesthetics # different colours for groups
  geom_errorbar(aes(ymin = m - sd, ymax = m + sd), width = 0.1) +
  geom_line() +  # connects points and connects them foor each group
  geom_point()  # add points to plot -> mean value for each group at different X

p <- p +
  ggtitle("A nonsense dataset") + # title of plot
  scale_y_continuous(name = "Mean") #  name of y axis
p <- p + guides(colour = guide_legend(title = "A new title",
                                      title.position = "left", ncol = 2)) # creates legend
print(p)