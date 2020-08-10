mu0 <- 10000            #hypothosized value
xbar <- 9900            #sample mean
sigma <- 120            #population standard deviation
n <- 30                 #sample size

z <- (xbar-mu0)/(sigma/sqrt(n)) #test statistic

print("z is equal to")
print(z)


#Calculate the critical value
alpha <- 0.05
z.alpha <- qnorm(1-alpha)

print("Critical value is equal to")
print(-z.alpha)

if(z <= -z.alpha){
    print("Reject the claim that the mean lifetime of a light bulb is above 10,000 hours.")
} else {
    print("Don not reject the claim that the mean lifetime of a light bulb is above 10,000 hours.")
}