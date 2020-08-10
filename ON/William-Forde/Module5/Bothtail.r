mu0 <- 15.4                 #hypothisized value
xbar <- 14.6                #sample mean
sigma <- 2.5                #population standard deviation
n <- 35                     #sample size

z <- (xbar-mu0)/(sigma/sqrt(n))
print("z is equal to")
print(z)

#Compute the critical values at .05 significance level.
alpha = .05
z.half.alpha = qnorm(1-alpha/2)
print(c(-z.half.alpha, z >= z.half.alpha))

if(z <= -z.half.alpha || z >= z.half.alpha){
    print("Reject the null hypothesis that the mean penguin weight does not differ from last year.")
} else {
    print("Do not reject the null hypothesis that the mean penguin weight does not differ from last year.")
}