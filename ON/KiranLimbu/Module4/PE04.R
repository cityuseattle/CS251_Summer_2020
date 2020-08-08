# Question 1: Boxplot of MPG by CTY
library(ggplot2)
df <- mpg
print(head(df))

pl <- ggplot(data=df, aes(factor(cyl), cty))
print(pl + geom_boxplot())

# Question 2: number of vehicles with city value > 26
highValueCity <- subset(df, subset=cty>26)
print(nrow(highValueCity))

# Question 3: max and min value of city column
print(max(df$cty))
print(min(df$cty))

# Question 4: Boxplot of cty excluding values above 26
lowValueCity <- subset(df, subset=cty<=26)
pl1 <- ggplot(data=lowValueCity, aes(factor(cyl), cty))
print(pl1 + geom_boxplot())

# Question 5: scatter plot between city and hwy
pl2 <- ggplot(data=df, aes(x=cty, y=hwy))
print(pl2 + geom_point(aes(color=cyl)))

# Question 6: bar plot of class
pl3 <- ggplot(df, aes(class))
print(pl3 + geom_bar())