library(ggplot2)
library(ggplot2movies)

df<-movies

print(head(df))

#data and aes layer
pl<-ggplot(df,aes(x=year,y=rating))

#geom layer
#adding data and aes to geom layer
print(pl+geom_density2d())