

# Use the iris data set
# • Using the ggplot function:
# – Generate a dot plot Sepal.Length versus Sepal.Width - show plot
summary(iris)
p <- ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()
show(p)

# – Add a title
p <- p + ggtitle("title")

# – Change your x-axis to only show data for Sepal Length between 5 and 7
p <- p + scale_x_continuous(limits=c(5,7))

# – Generate a new plot as above but faceted for species
p2 <- ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point() + facet_wrap(iris$Species)

# – Colour the points by Petal.Width
p2 <- ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Petal.Width)) + geom_point() + facet_wrap(iris$Species)

# – Scale the size of points by Petal.Length
p2 <- ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Petal.Width, size=Petal.Width)) + geom_point() + facet_wrap(iris$Species)

# • Use the ggplot cheat sheet
iris %>% filter (Species!="setosa") %>%
ggplot (aes(Species,Sepal.Width)) + geom_boxplot()

