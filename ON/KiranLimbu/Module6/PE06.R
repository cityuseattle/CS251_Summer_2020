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

group2 <- rnorm(100, mean = 85, sd = 5)

num_set <- c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)

for(i in num_set) {
    # add num_set (one vector at a time) to group2
    group2a <- group2 + i
    # the result of the test
    result <- t.test (x = group1, y = group2a, var.equa=T)

    # check the result at the significance level of 5%
    # if condition is met break from the loop
    if (result$p.val < 0.05) {
        print("The smallest constant in num_set that rejects the null hypothesis")
        print(i)
        print("p-value")
        print(result$p.val)
        break
    }
}