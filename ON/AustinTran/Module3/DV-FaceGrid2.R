library(ggplot2)

df <- mpg 

print(head(df))

pl <- ggplot(df, aes(displ, cty))

pl2 <- pl + geom_point()

print(pl2 + facet_grid(drv ~ cyl))

#Note: drv col has f, r, 4 and that means f = front-wheel drive, r = rear-wheel drive, 4 = 4wd