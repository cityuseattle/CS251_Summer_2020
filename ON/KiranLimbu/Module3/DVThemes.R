library(ggplot2);

df <- mtcars;

print(head(df));

pl <- ggplot(data=df, aes(x=mpg, y=hp));

# Geometry layer
pl2 <- pl + geom_point();

# Adding the data, Aesthetics, geom to theme layer
# print(pl2 + theme_bw()); 
# print(pl2 + theme_classic()); 
# print(pl2 + theme_dark()); 
# print(pl2 + theme_light());
# print(pl2 + theme_linedraw()); 
print(pl2 + theme_void()); 