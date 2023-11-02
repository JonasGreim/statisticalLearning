df <- data.frame( # row = object, colum = values
  id = 1:5,
  name = c("Rick", "Dan", "Michelle", "Ryan", "Gary"),
  salary = c(623.3, 515.2, 611.0, 729.0, 843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15",
                         "2014-05-11", "2015-03-27")),
  stringsAsFactors = FALSE   # you can use a string as a category
)
df

# structure, types
str(df)
# TYPES: int, str, num(floating), Date

summary(df)

# get column by name
df$name

# get column by index
df[, 2]

# extract the first two rows
df[1:2,]

# Extract 3rd and 5th row with 2nd and 4th colum
df[c(3, 5), c(2, 4)]


# add colum (! have to be exacly same column length)
df$dept <- c("IT", "Operations", "IT", "HR", "Finance")
df

# add rows
new_row <- data.frame(
  id = 6:8,
  name = c("Monica", "Anne", "Julie"),
  salary = c(578.0, 722.5, 632.8),
  start_date = as.Date(c("2013-05-21", "2013-07-30", "2014-06-17")),
  dept = c("IT", "Operations", "Finance"),
  stringsAsFactors = FALSE
)
df <- rbind(df, new_row) # row bind
df


# filter rows by pattern in column name
df[grep("R", df$name),]


# filter by salary, only show names and department
df[df$salary > 600, c(2, 5)]


## Exercise 03a
# add column gender with the possible values [female, male, diverse] (e.g. guess suitable value from column name)

length(df$name)
df$gender <- c("female", "male", "diverse", "female", "male", "diverse", "female", "male")

# add two more rows with values of your choice
df <- rbind(df,
            data.frame(
              id = 9:10,
              name = c("Sue", "Peter"),
              salary = c(513.5, 672.0),
              start_date = as.Date(c("2016-07-10", "2013-08-02")),
              dept = c("Operations", "Finance"),
              gender = c("female", "male"),
              stringsAsFactors = FALSE
            ))
df

# count how many people work in each of the departments
table(unlist(df$dept))

# create a dataframe with the columns gender and mean_salary and calculate the average salary stratified by gender value
data.frame(
  gender = c("female", "male", "diverse"),
  mean_salary = c(
    mean(df[df$gender == "female", 3]),
    mean(df[df$gender == "male", 3]),
    mean(df[df$gender == "diverse", 3]),
  )
)


## Exercise 03b

tb <- tibble(
  x = 1:2,
  y = list("a" = 3, "b" = 4)
)
tb




