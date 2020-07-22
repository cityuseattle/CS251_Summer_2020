library(ggplot2)

df<-mpg
print(head(df))

#data and aes layer
#counts (or sums of weights)
#X axis is class col
#y axis is counts of occurances of each element in class col
g<-ggplot(df,aes(class))

#geometry later
#colored bars based on drv col
print(g+geom_bar(aes(fill=drv)))