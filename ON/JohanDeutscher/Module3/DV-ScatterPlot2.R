library(ggplot2)

df <- mtcars

print(head(df))

#DATA & AESTHETICS Layer
#Build a historgram out of rating column
pl<-ggplot(data=df,aes(x=wt,y=mpg))

#Geometry layer
#Adding the data & AESTHETICS layer geom layer
print(pl+geom_point(aes(color=factor(cyl))))
