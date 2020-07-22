library(ggplot2)
library(ggplot2movies)
df<-movies<-movies[sample(nrow(movies),1000),]

print(head(df))

#Data and Aesthetics Layer
#Build histogram out of rating column
pl<-ggplot(df,aes(x=rating))

#geometry layer with colors and labels
print(pl+geom_histogram(binwidth=0.1,color="red",fill="black",alpha=0.4,linetype="dotted")+xlab('Movie Ratings')+ylab("Occurences")+ggtitle('Movie Rating'))