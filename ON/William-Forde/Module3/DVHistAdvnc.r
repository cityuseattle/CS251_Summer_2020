library(ggplot2)
library(ggplot2movies)
df <- movies<-movies[sample(nrow(movies), 1000),]

#print(head(df))

#DATA & AESTHETICS Layer
#Build a histogram out of rating colum
pl<- ggplot(df, aes(x=rating))

#Geometry layer
pl2 <- pl + geom_histogram(binwidth=0.1, aes(fill=..count..)) + xlab('Movies Ratings') + ylab('Occurances')

print(pl2 + scale_fill_gradient('Count', low='blue', high='red'))