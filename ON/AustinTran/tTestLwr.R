mu0 <- 2        # Hypothesized Value
xbar <- 1.8     # Sample Mean
n <- 10         # Sample Size
s <- 0.15       # Sample SD

t <- (xbar-mu0)/(s/sqrt(n))
print("The value of t is equal to")
print(t)

# Compute the critical value at .01 significance level
alpha <- 0.01
t.alpha <- qt(1-alpha, df=n-1)
print("The value of t is")
print(-t.alpha)

if(t <= -t.alpha){
    print("reject the null hypothesis that the average life span of a battery is 2 or more years")
} else {
    print("do not reject the null hypothesis that the average life span of a battery is 2 or more years")
}