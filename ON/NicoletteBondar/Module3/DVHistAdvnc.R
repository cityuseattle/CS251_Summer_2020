library(ggplot2)
library(ggplot2movies)

df <- movies<-movies[sample(nrow(movies), 1000), ]

#print(head(df))

#Data & aesthetics layer 
#build a histogram out of rating column 
pl<- ggplot(df,aes(x=rating))

print(pl + geom_histogram(binwidth=0.1,aes(fill=..count..))
         + xlab('Movie Ratings')+ ylad('Occurences'))

prin(pl2 + scale_fill_gradient('Count', low='blue',high='red'))
