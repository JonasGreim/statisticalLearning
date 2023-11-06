library(ggplot2movies)
data('movies')
?movies # You can use the ? operator to access the help file for the movies dataset

# - Use mutate to create a centered version of the rating variable. A centered variable is one whose mean has been subtracted from it.
## Create a centered version of the 'rating' variable
movies$rating_centered <- movies$rating - mean(movies$rating)

# - Use filter to create a new data frame that has only movies from the years 2000 and beyond. Use the greater than or equal operator >=.
movies_filteredByYear <- movies[movies$year > 1999,]

# - Use select to create a new data frame that only has the title, year, budget, length, rating and votes variables. There are at least 3 ways to do this.
movies_less <- select(movies, title, year, budget, length, rating, votes)

# - Use group_by to group the data by year, and summarize to create a new variable that is the average budget. The summarize function works just like mutate in this case.
## The %>% operator takes the result of the expression on its left and passes it as the first argument to the function on its right.
average_budget_by_year <- movies %>%
  group_by(year) %>%
  summarize(average_budget = mean(budget)) # Summarise each group down to one row -> new df

#  - Use the mean function to get the average, but you’ll also need to use the argument na.rm = TRUE within it because the earliest years have no budget recorded.
## NA = Not available, NaN = not a number
average_budget_by_year_droppedNA <- movies %>%
  group_by(year) %>%
  summarize(average_budget = mean(budget, na.rm = TRUE)) ## na.rm NA values should be stripped before computation

# - Now put several actions together in one set of piped operations.
#   -  Filter movies released after 1990
#   -  select the same variables as before but also the mpaa, Action, and Drama variables
#   -  group by mpaa and (your choice) Action or Drama
#   -  get the average rating
pipedOperationResult <- movies %>%
  filter(year > 1990) %>%
  select(title, year, rating, mpaa, Action, Drama) %>%
  group_by(mpaa, Action) %>%
  summarise(average_rating = mean(rating, na.rm = TRUE))


