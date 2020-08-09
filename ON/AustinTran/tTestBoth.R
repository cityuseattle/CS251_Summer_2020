mu0 <- 15.4     # Hypothesized Value
xbar <- 14.6    # Sample Mean
s <- 2.5        # Sample Standard Deviation
n <- 29         # Sample Size

t <- (xbar - mu0)/(s/sqrt(n))   # Test Statistic
print("t is equal to")
print(t)

# Compute the critical values at .05 significance level
alpha = .05
t.half.alpha = qt(1-alpha/2, df=n-1)
print("t.half.alpha values is equal to")
print(c(-t.half.alpha, t.half.alpha))

if (t <= -t.half.alpha || t >= t.half.alpha){
    print("Reject the null hypothesis that the mean penguin weight does not differ from last year")
} else {
    print("do not reject the null hypothesis that the mean penguin weight does not differ from last year")
}