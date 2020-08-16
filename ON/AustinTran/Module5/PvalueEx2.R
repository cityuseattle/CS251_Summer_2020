mu0 <-  15.4        # Hypothesized value
xbar <- 14.6        # Sample mean
sigma <- 2.5        # Population SD
n <- 35             # Sample Size
alpha <- 0.05

z <- (xbar-mu0)/(sigma/sqrt(n))
print("z is equal to")
print(z)

# Apply the pnorm function to compute the two-tailed p-value of the test statistic.
# It doubles the lower tail p-value as the sample mean is less than the hypothesized value.
pval = 2 * pnorm(z)     # lower tail
print("The value of pval is:")
print(pval)                     # two-tailed p-value

if(pval < alpha){
    print("reject the null hypothesis")
} else {
    print("don't reject the null hypothesis")
}