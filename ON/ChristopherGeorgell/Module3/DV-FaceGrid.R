library(ggplot2)

df<-mpg

print(head(df))

#data and aes layer
pl<-ggplot(df,aes(displ,cty))

#geom layer
#adding data and aes to geom layer
pl2<-pl+geom_point()

#organized mpg vs cyl
print(pl2+facet_grid(.~cyl))