#In this exercise, we will work with the temp_max_pe5.csv file. This file contains
#the daily maximum temperature of Seattle in July 2015. We want to use a t-test 
#to find out if the average maximum temperature of Seattle in July 2015 is
#the same as that of preceding years. Between 2012 and 2014, the average maximum 
#temperature of Seattle in July is 25.3 degrees Celsius. 
#Let’s assume this is the population mean, but the population variance is not known. 
#We will use a two-sided test with a significance level of 0.01. 


#print csv file
data<-read.csv(file="temp_max_pe5.csv",header=TRUE,sep=",")

#H0: The average maximum temperature of Seattle in July 2015 
#is equal to the average maximum temperature of July between 2012 and 2014.
mu1<-mean(data[,1])
print("Mean of July 2015 data")
print(mu1)

#Follow the listed steps to conduct hypothesis testing.

#1. Calculate the mean of the maximum temperature of Seattle in July between 2012 and 2014. 
#Call it mu0.
mu0<-c(25.3)
print("1. Max average of July temps between 2012 and 2014")
print(mu0)

#2. Calculate t-statistic using mu0 and the information from the CSV file. 
#Call it t. (You need to calculate the sample mean, standard deviation, 
#and the number of samples.)

#Calculate population sd
s<-sd(data[,1])

#Calculate sample size
n<-nrow(data)

xbar<-mu1 #sample mean

t<-(xbar-mu0)/(s/sqrt(n)) #test statistic
print("2. The value of t is equal to")
print(t)

#3. Calculate the critical values tα∕2 at the 0.01 significance level. 
#Call it t.half.alpha. (You need to use a two-sided test. Why?)
#t.half.alpha<-

alpha<-0.01
t.half.alpha<-qt(1-alpha,df=n-1)
print("3. The value of t.half.alpha is")
print(c(-t.half.alpha,t.half.alpha))

#4. What happens to the null hypothesis? 
#Does it get rejected or not? Describe the result.

if(t<=-t.half.alpha||t>=t.half.alpha){
    print("4. reject the null hypothesis that the mean July 2015 max temp does not differ max July mean temp 2012-2014")
} else{
    print("4. Do not reject the null hypothesis that the mean July 2015 max temp does not differ max July mean temp 2012-2014")
}
#5. Calculate the p-value at the 0.01 significance level. Call it pval.

alpha<-.01

z<-(xbar-mu0)/(s/sqrt(n)) #test statistic
print("5. The value of z is equal to")
print(z)

#apply the pnorm function to compute the two-tailed p-value of the test stat

pval = 2 * pnorm(z) #lower tail


if(pval<alpha){
    print("6. reject the null hypothses")
}else{
    print("6. Don't reject the null hypothesis")
}

print("6a. Check your result and compare it with what you obtained in 4.")

print("6a. I attained different answers and I am not sure why")
#Use the same problem numbering in your R file.
