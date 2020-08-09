mu0<-2 #hypothesized value
xbar<-1.8 #sample mean
s<-0.15 #population standard deviation
n<-10      #sample size
alpha<-0.01

t<-(xbar-mu0)/(s/sqrt(n)) #test statistic
print("The value of t is equal to")
print(t)

#apply the pt function to compute lower tail p-value of the test statistic.
#It doubles the lower tail p-value as the sample mean is less than the hypothesized value.

pval = pt(t,df=n-1)
print("pval is equal to")
print(pval) #lower tail p-value

if(pval<alpha){
    print("reject the null hypothses")
}else{
    print("Don't reject the null hypothesis")
}