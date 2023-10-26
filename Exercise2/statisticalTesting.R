boxplot(Sepal.Length ~Species, data = iris)
# Box lays 50% data located around median
# straight line in box = median -> skewness of the data
# Whisker = daten außerhalb box (min, max)


# quantile-quantile (Q-Q) plot for assessing whether a dataset follows a particular theoretical distribution, such as the normal distribution
# This plot compares the distribution of the sepal length data to the theoretical quantiles of a normal distribution
qqnorm(iris$Sepal.Length)
# If the points in the Q-Q plot closely follow a straight line, it suggests that the sepal length data is approximately normally distributed.


# variance
setosa.sl <- iris[iris$Species=='setosa',"Sepal.Length"]
versicolor.sl <- iris[iris$Species=='versicolor',"Sepal.Length"]
l <- list (var.setosa=var(setosa.sl), var.versicolor=var(versicolor.sl))
l

# two sample t-test
t.test (x=setosa.sl,y=versicolor.sl, alternative = "two.sided", var.equal=FALSE)

# assumption not normal distribution
wilcox.test(x=setosa.sl,y=versicolor.sl, alternative = "two.sided", paired=FALSE)