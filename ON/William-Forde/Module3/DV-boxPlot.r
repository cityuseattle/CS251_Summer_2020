library(ggplot2)

df <- mtcars
print(head(df))
#DATA & AESTHETICS Layer
# counts (or sums of weights)
# The x axis will be the class col
# and the y axis will be the counts of
# the occurance of each elements in the class col
pl <- ggplot(data=df, aes(factor(cyl), mpg))

#Geometry layer
#Adding the data & AESTHETICS layer to geom layer
print(pl + geom_boxplot() + coord_flip())