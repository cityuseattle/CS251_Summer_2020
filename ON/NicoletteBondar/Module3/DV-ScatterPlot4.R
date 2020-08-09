library(ggplot2)

df <- mtcars 

print(head(df))

#Data & AESTHETICS LAYER 
pl <- ggplot(data=df,aes(x=wt, y=mpg))

print(pl + geom_print(aes(color =hp),size=4) + scale_color_gradient(high='red',low = 'blue'))
