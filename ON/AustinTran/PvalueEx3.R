mu0 <- 2        # Hypothesized value
xbar <- 1.8     # Sample Mean
n <- 10         # Sample Size
s <- 0.15       # Sample Standard Deviation
alpha <- 0.01

t <- (xbar-mu0)/(s/sqrt(n))
print("The value of t is equal to")
print(t)

# Apply the pt function to compute the lower tail p-value of the test statistic.
pval = pt(t, df=n-1)
print("pval is equal to:")
print(pval)                 # Lower tail p-value

if(pval < alpha){
    print("reject the null hypothesis")
} else {
    print("don't reject the null hypothesis")
}