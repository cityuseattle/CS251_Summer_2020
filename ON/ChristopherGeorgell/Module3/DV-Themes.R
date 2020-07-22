library(ggplot2)

df<-mtcars

print(head(df))

#data and aes
pl<-ggplot(data=df,aes(x=mpg,y=hp))

#geom layer
#adding data and aes to geom
pl2<-pl+geom_point()

#adding data, aes, and geom to theme layer
print(pl2+theme_void())

