# • Iris data: Build a linear model Sepal.Length vs. Sepal Width for all and only species, respectively
# • Investigate explained variance and residuals, what do you observe in comparison?

iris.fit <- lm(Sepal.Length ~ Sepal.Width, data=iris)
summary(iris.fit)
plot (iris.fit)

iris.red<- iris %>% filter (Species=="setosa")
iris.red.fit <- lm(Sepal.Length ~ Sepal.Width, data=iris.red)
summary (iris.red.fit)
plot (iris.red.fit)

sessionInfo()