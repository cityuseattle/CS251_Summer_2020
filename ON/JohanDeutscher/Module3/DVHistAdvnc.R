library(ggplot2)
library(ggplot2movies)
df<-movies<-movies[sample(nrow(movies),1000),]
print(head(df))

# print(head(df))

#DATA & AESTHETICS Layer
#Build a historgram out of rating column
pl<-ggplot(df,aes(x=rating))

#Geometry layer
#Adding the data & AESTHETICS layer geom layer
p12<-pl+geom_histogram(binwidth=0.1,aes(fill=..count..)) + xlab('Movie Ratings')+ ylab('Occurences') + ggtitle('Movie Ratings')
        
#scale_fill_gradient('Lavel',low=color1,high=color2)
print(p12+scale_fill_gradient('Count',low='blue',high='red'))
