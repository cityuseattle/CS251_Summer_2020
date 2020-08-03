# The following to find the 90th percentile value for the column Sepal.Length
print(quantile(iris$Sepal.Length, probs = 0.9))

#Finding Percentiles of Several Data Frame Columns
#Define columns we want to find percentiles for
small_iris <- iris[ , c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width')]

#Use apply() function to find 90th percentile for every column
result <- apply(small_iris, 2, function(x) quantile(x, probs = 0.9))
print(result)