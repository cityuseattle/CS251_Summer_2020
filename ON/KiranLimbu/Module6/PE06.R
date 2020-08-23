# Group 1
# size (n) = 100
# mean (xbar) = 85
# standard deviation (s) = 5

# Group 2
# size (n) = 100
# mean (xbar) = 85
# standard deviation (s) = 5
# significance level (alpha) = 5

# Question find p-value


set.seed(1234)
group1 <- rnorm(100, mean = 85, sd = 5)

set.seed(1234)
group2 <- rnorm(100, mean = 85, sd = 5)

num_set <- c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)
group2a <- append(group2, num_set)


# the result of the test
result <- t.test (x = group1, y = group2a, var.equa=T)
print(result)