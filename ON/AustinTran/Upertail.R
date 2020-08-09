mu0 <- 2        # Hypothesized Value
xbar <- 2.1     # Sample Mean
sigma <- 0.25   # Population Standard Deviation
n <- 35         # Sample Mean

z <-  (xbar-mu0)/(sigma/sqrt(n))
print("z is equal to")
print(z)

# Compute the critical value at .05 significance level
alpha <- .05
z.alpha <- qnorm(1-alpha)

print("z.alpha is equal to")
print(z.alpha)

if(z>=z.alpha){
    print("We reject the claim that there is at most 2 grams of saturated fat in a cookie")
} else {
    print("Do not reject the claim that there is at most 2 grams of saturated fat in a cookie")
}