library(ggplot2)

df <- mpg
print(head(df))

#DATA & AESTHETICS Layer
#Build a historgram out of rating column
pl<-ggplot(data=df,aes(x=cty,y=hwy))

#Geometry layer
#Adding the data & AESTHETICS layer geom layer
print(pl+geom_point(aes(cty)))
