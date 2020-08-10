mu0 <- 2                    #hypothesized Value
xbar <- 2.1                 #sample mean
sigma <- 0.25               #population stadard deviation
n <- 35                     #sample size

z <- (xbar-mu0)/(sigma/sqrt(n))
print("z is equal to")
print(z)

#Compute the critical value at .05 significance level
alpha <- .05
z.alpha <- qnorm(1-alpha)

print("z.alpha is equal to")
print(z.alpha)

if(z>=z.alpha){
    print("We reject the claim that there is at most 2 grams of saturated fat in a cookie.")
} else {
    print("Do not reject the claim that there is atmost 2 grams of saturated fat in a cookie.")
}