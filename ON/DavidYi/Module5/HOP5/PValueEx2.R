mu0 <- 15.4         #hypotehsized value
xbar <- 14.6        #sample mean
sigma <- 2.5        #population standard deviation
n <- 35             #sample size
alpha <- .05

z <- (xbar-mu0)/(sigma/sqrt(n)) 
print("z is equal to")
print(z)

#apply the pnorm function to compute the two-tailed p-value of the test statistic.
#It double the lower tail p-value as the sample mean is less than the hypotehsized value.

pval <- 2 * pnorm(z) #lower tail
print("pval is equal to")
print(pval)          #two-tailed p-value

if(pval < alpha){
    print("Reject the null hypothesis.")
} else {
    print("Don't reject the null hypothesis.")
}
   