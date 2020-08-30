library(ggplot2)
library(ggthemes)

df <- mtcars

print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(df, aes(x=mpg, y=hp))

#Geometry layer
#Adding the data & AESTHETICS layer with geom layer
pl2 <- pl + geom_point()

print(pl2 + theme_economist())

#Note: drv col has f, r, 4, and that means
# f = front-wheel drive, r = rear wheel drive, 4 = 4wd