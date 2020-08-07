library(ggplot2)

df <- mtcars 
print(head(df))

#Data & AESTHETICS layer 
pl <- ggplot(data=df,aes(x=wt, y=mpg))

print(pl + geom_point(aes(color=factor(cyl))))
