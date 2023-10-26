# • Create a list l holding
# $price = 52,54.75,57.40
# $rooms = 2 3 4
# $cen.heat = "y" "n" "y"
l<-list(price=c(52,54.75,57.40), rooms=c(2, 3, 4), cen.heat=c("y", "n", "y"))

# • Transform to a data frame
df<-data.frame(l)
df

# • Remove column ‘rooms’ from data frame
df<-df[c(1,3)] # remove rooms
df

# • Write table to file “table.txt”
write.table(df,file="~/table.txt")

# • Read table as data frame “a”
a<-read.table("~/table.txt", header = TRUE)

# • Extract price as vector
a$price