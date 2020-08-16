mu0 <- 10000        # Hypothesized Value
xbar <- 9900        # Sample Mean
sigma <- 120        # Population Standard Deviation
n <- 30             # Sample Size

z <- (xbar-mu0)/(sigma/sqrt(n)) # Test Statistic

print("z is equal to")
print(z)

# Calculate the critical value
alpha <- 0.05
z.alpha <- qnorm(1-alpha)

print("critical value is equal to")
print (-z.alpha)

if (z <= -z.alpha){
    print("Reject the claim that mean lifetime of a lightbulb is above 10,000 hours")
} else {
    print("Do not reject the claim that mean lifetime of a light bulb is above 10,000 hours")
}