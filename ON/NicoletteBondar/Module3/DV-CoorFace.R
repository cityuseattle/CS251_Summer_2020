library(ggplt2)

df<- mpg 

print(head(df))

#data & aesthetics layer 
pl <- ggplot(mpg,aes(x=displ,y=hwy))

print(pl + geom_point())

print(pl2 + coord_cartesian(xlim=c(1,4),ylim=c(15,30)))
