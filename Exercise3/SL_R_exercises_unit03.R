# Using R as a calculator
31 * 78
697/41
log2(sqrt(2345))

# Vectors
vec1 <- c(2, 5, 8, 12, 16) # c = combine
vec2 <- (5:9)
result <- (vec1 - vec2)
result

# plotting
head(mtcars) # explore first rows
str(mtcars) # explore structure
summary(mtcars) # explore statistics

hist(mtcars$hp)
plot(mtcars$mpg ~ mtcars$hp)

# Statistical testing
cars_4_gears <- mtcars[mtcars$gear == 4, ]
cars_3_gears <- mtcars[mtcars$gear == 3, ]
t.test(cars_4_gears$mpg, cars_3_gears$mpg, alternative = "less")
# high p-value -> true
