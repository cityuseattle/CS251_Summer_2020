mu0 <- 15.4     # Hypothesized Valuie
xbar <-- 14.6   # Sample Mean
sigma <- 2.5    # Population Standard Deviation
n <- 35         # Sample Size

z <- (xbar-mu0)/(sigma/sqrt(n))
print("z is equal to")
print(z)

# Compute the critical values at .05 significance level
alpha = .05
z.half.alpha = qnorm(1-alpha/2)
print(c(-z.half.alpha, z.half.alpha))

if(z <= -z.half.alpha || z >= z.half.alpha){
    print("reject the null hypothesis that the mean penguin weight does not differ from last year")
} else {
    print("do not reject the null hypothesis that the mean penguin weight does not differ from last year")
}