library(ggplot2)

df<- mpg #mpg is a built-in dataset 

Print(head(df))

#Data & aesthetics layer 
pl <- ggplot(df,aes(displ, cty))

pl2 <- pl + geom_point()

print(pl2 + facet_grid(drv ~ cyl))

