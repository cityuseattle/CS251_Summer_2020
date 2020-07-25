library(ggplot2)

df <- mpg
print(head(df))
#Data & Aesthetics layer
#Counts
#The x axis will be the class col
#The y axis will be the counts of the occurence of each element in the class col
g <- ggplot(df,aes(class))

#Geometry  layer
#Fill the col colors based on the number of drc in each class
print (g + geom_bar(aes(fill = drv)))