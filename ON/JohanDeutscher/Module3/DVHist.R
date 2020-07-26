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
print(pl+geom_histogram(binwidth=0.1,color='red',fill='pink',alpha=0.4,linetype='dotted')
        + xlab('Movie Ratings')+ ylab('Occurences') + ggtitle('Movie Ratings'))