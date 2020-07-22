library(ggplot2)

df<-mtcars

print(head(df))

#data and aesthetics layer
pl<-ggplot(data=df,aes(x=wt,y=mpg))

#geometry layer 
#adding data and aesthetics later to geom layer
#plots by color
print(pl+geom_point(aes(color=cyl)))