mu0 <- 10000        # Hypothesized Value
xbar <- 9900        # Sample Mean
sigma <- 120        # Population SD
n <- 30             # Sample Size
alpha <- .05

z <- (xbar-mu0)/(sigma/sqrt(n)) # Test Statistic

print("z is equal to")
print(z)

# Apply the pnorm function to compute the lower tail p-value of the test statistic.
# As it turns out to be less
# Than the .05 significance level, we reject the null hypothesis that μ ≥ 10000

pval <- pnorm(z)
print("pval is equal to")
print(pval)

if(pval < alpha)
    print("reject the null hypothesis")
