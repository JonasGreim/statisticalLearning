library(MASS)
library (ISLR2)


head(Boston)
lm.fit <- lm (medv ~ lstat, data=Boston) # used to fit linear models
lm.fit
summary(lm.fit)

confint(lm.fit) # Accession the confidence interval

# Predict medv from lstat using the mode
predict (lm.fit, data.frame(lstat=(c(5,10,15)))) # prediction for values 5,10,15


predict (lm.fit, data.frame(lstat=(c(5,10,15))), # confidence intervals along with the point predictions
interval = "confidence")
# result shows the predicted values(fit), lower confidence limits(lwr), and upper confidence(upr)

predict (lm.fit, data.frame(lstat=(c(5,10,15))),
interval = "prediction") # calculate prediction intervals along with the point predictions for the specified values
# A prediction interval reflects the uncertainty around a single value
# confidence interval reflects the uncertainty around the mean prediction value


plot(lstat~medv,data=Boston)
# abline(lm.fit, colour="red") # Does not run in Rmd, can only be used on console
par (mfrow=c(2,2)) # specify the layout of a plotting device # 2x2
plot(lm.fit)

ggplot (Boston, aes(lstat, medv)) +
geom_point() +
geom_smooth(method = "lm")
## `geom_smooth()` using formula 'y ~ x'

ggplot (Boston, aes(lstat, medv)) +
geom_point() +
geom_line(data = fortify(lm.fit), aes(x = lstat, y = .fitted), color="red")