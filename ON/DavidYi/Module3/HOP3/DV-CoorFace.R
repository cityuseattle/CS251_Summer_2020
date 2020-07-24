library(ggplot2)

df <- mpg #mpg is a built-in dataset

#Data & Aesthetics Layer
pl <- ggplot(mpg,aes(x=displ,y=hwy))

#Geometry layer
#Adding the data & Aesthetics layer with geom layer
pl2 <- pl + geom_point()

#To limit the scale of x-axis and y-axis
print(pl2 + coord_cartesian(xlim=c(1,4),ylim=c(15,30)))