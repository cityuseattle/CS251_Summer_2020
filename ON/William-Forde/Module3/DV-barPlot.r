library(ggplot2)

df <- mpg
print(head(df))
#DATA & AESTHETICS Layer
# counts (or sums of weights)
# The x axis will be the class col
# and the y axis will be the counts of
# the occurance of each elements in the class col
g <- ggplot(df, aes(class))

#Geometry layer
#Adding the data & AESTHETICS layer to geom layer
print(g + geom_bar())