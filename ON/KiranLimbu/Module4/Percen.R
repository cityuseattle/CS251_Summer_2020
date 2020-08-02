# The following to find the 90th percentile
print(quantile(iris$Sepal.Length, probs = 0.9))

# Finding percentiles of several data frame columns
# define columns we want to find percetiles for 
small_iris <- iris[ , c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width')]
res <- apply(small_iris, 2, function(x) quantile(x, probs = .9))
print(res)