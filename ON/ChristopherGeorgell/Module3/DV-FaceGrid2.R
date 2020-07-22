library(ggplot2)

df<-mpg

print(head(df))

#data and aes layer
pl<-ggplot(df,aes(displ,cty))

#geom layer
#adding data and aes to geom layer
pl2<-pl+geom_point()

#organized cylinder vs drive
print(pl2+facet_grid(drv~cyl))