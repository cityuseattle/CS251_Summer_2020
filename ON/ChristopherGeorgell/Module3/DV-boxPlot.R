library(ggplot2)

df<-mtcars

print(head(df))

#data and aes layer
pl<-ggplot(data=df,aes(factor(cyl),mpg))

#geom layer
#adding data and aes to geom layer
#with coord flip
print(pl+geom_boxplot()+coord_flip())