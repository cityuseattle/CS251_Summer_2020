library(ggplot2)
library(ggplot2movies)

df <- movies 

print(head(df))

#DATA & AESTHETICS layer 
pl <- ggplot(df,aes(x = year,y=rating))

#Geometry layer 
#adding the data & aesethetics layer with geom layer 
print(pl + geom_bin2d())
