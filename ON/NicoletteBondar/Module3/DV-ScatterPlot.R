library(ggplot2)

df <- mtcars 

print(head(df))

#DATA & aesthetics layer 
 pl <- ggplot(data=df,aes(x=wt, y=mpg))
 
 print(pl + geom_point(aes(color=cyl)))
 