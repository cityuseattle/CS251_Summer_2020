mu0<-15.4 #hypothesized value
xbar<-14.6 #sample mean
sigma<-2.5 #population standard deviation
n<-35      #sample size
alpha<-.05

z<-(xbar-mu0)/(sigma/sqrt(n)) #test statistic
print("The value of z is equal to")
print(z)

#apply the pnorm function to compute the two-tailed p-value of the test stat
#It doubles the lower tail p-value as the sample mean is less than the hypothesized value.

pval = 2 * pnorm(z) #lower tail
print("pval is equal to")
print(pval) #two-sided p-value

if(pval<alpha){
    print("reject the null hypothses")
}else{
    print("Don't reject the null hypothesis")
}