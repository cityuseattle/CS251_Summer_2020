library(ggplot2)
library(ggplot2movies)
df <- movies<- movies[sample(nrow(movies), 1000), ]

print(head(df))

#Data & Aesthetics Layer
#Build a histogram out of rating column
pl <- ggplot(df,aes(x=rating))

#Geometry layer
print(pl + geom_histogram(binwidth=0.2, color = 'black', fill = 'purple', alpha = 0.4, linetype= 'dotted') #Adding the data & Aesthetics layer with geom layer
         + xlab('Movie Ratings') + ylab('Occurences') + ggtitle(' Movie Ratings'))