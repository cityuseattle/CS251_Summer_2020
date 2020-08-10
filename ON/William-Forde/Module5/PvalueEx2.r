mu0 <- 15.4     #hypothesized value
xbar <- 14.6    #sample mean
sigma <- 2.5    #population standard deviation
n <- 35         #sample size
alpha <- 0.05

z <- (xbar-mu0)/(sigma/sqrt(n))
print("z is equal to :")
print(z)

#Apply the pnorm function to compute the two-tailed p-value of the test statistic.
#It doubles the lower tail p-value as the sample mean is less than the hypothesized value.
pval = 2 * pnorm(z) #lower-tail
print("The value of pval is:")
print(pval)         #two-tailed p-value

if(pval < alpha){
    print("Reject the null hypothesis.")
} else {
    print("Don't reject the null hypothesis.")
}
