library(ggplot2)
library(ggplot2movies)
df<-movies<-movies[sample(nrow(movies),1000),]

print(head(df))

#Data and Aesthetics Layer
#Build histogram out of rating column
pl<-ggplot(df,aes(x=rating))

#geometry layer 
#Adding the data & aesthetics layer with geom layer (Density)
print(pl+geom_histogram(binwidth=0.1,aes(y=..density..))+geom_density(color="red")

