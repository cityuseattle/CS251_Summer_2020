library(ggplot2)
library(ggthemes)

df <- mtcars

print(head(df))

#Data & Aesthetics layer
pl <- ggplot(data=df,aes(x=mpg,y=hp))

#Geometry layer
#Adding the data & Aesthetics layer to geom layer
pl2 <- pl + geom_point()

#Adding the data, Aesthetics, geom to theme layer
print(pl2 + theme_economist())