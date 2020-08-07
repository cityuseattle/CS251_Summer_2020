#the following to find the 90th percentile value for the colum sepal.lenght:
print(quantile(iris$Sepal.Lenght, probs = 0.9))

#finding percentiles of several data frame colums 
#define columns we want to find percentiles for 
small_iris<- iris[, c('Sepal.length', 'Sepal.Width', 'Petal.Length', 'Petal.Width')]

result <- apply(small_iris, 2, function(x) quantile(x, probs = .9))
print(result)
