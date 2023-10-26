l<-list(price=c(52,54.75,57.40), rooms=c(2, 3, 4), cen.heat=c("y", "n", "y"))

df<-data.frame(l)
df<-df[c(1,3)] # remove rooms
df

write.table(df,file="~/table.txt")

a<-read.table("~/table.txt", header = TRUE)

a$price