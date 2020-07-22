library(ggplot2)

df<-mtcars

print(head(df))

#data and aesthetics layer
pl<-ggplot(data=df,aes(x=wt,y=mpg))

#geometry layer 
#adding data and aesthetics later to geom layer
#gradient color by horsepower
print(pl+geom_point(aes(color=hp),size=4)+scale_colour_gradient(high="red",low="blue"))