#1. Draw a box plot of cty using base R graphics. (You will see a few data points above the upper whisker boundary. cty is a column in mpg data.)
#2. Display the number of vehicles whose cty value is greater than 26.
#3. Display both the maximum and minimum values of the cty column.
#4. Draw the box plot of cty after removing data points exceeding 26. Data points above the upper whisker boundary should be removed.
# Scatter plot
#5. Draw a scatter plot between cty and hwy using ggplot2. (Use cty in the x-axis and hwy in the y-axis.)
# Bar plot
#6. Draw a bar plot of class using ggplot2. (Use class in the x-axis.)

library(ggplot2)

df <- mpg
print(head(df))

#conditional selection
sub1<-subset(df,cty>26);
print(sub1);
length(sub1)

b<-max(mpg$cty)
c<-min(mpg$cty)
print(b)
print(c)

sub2<-subset(df,cty<26);
print(sub2);
length(sub2)


#DATA & AESTHETICS Layer

pl<-ggplot(data=sub2,aes(cty))

#Geometry layer
#Adding the data & AESTHETICS layer to geom layer
print(pl+geom_boxplot() + coord_flip())
