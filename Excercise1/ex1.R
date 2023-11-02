x <- c(1:5 * 2 - 4, "foo", 42)
x
x <- x[-6]
x
mode(x)
x <- as.numeric(x)
mode(x)
x <- x[x >=0]
x
sum(x)
summary (x)