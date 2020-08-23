set.seed(1234)

#Use ‘set.seed(1234)’ to ensure everyone can generate the same result.

#Generate a set of 100 random numbers that follow a normal distribution with 
#a mean 85 and a standard deviation of 5. Name it group1 and assume it is 
#a test score of 100 students in a class.
group1<-rnorm(100,mean=85,sd=5)


#Generate another set of 100 random number that follows a normal distribution with the 
#same mean and standard deviation as in #2. Name it group2. 
#You can think of it as a test score of 100 students in another class.
group2<-rnorm(100,mean=85,sd=5)


#Consider a set of numbers in an increment of 0.1 between 0 and 1. 
#In other words, we will consider the following set of 
#numbers: {0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0} call it num_set. 
#You can consider it as the effect of using a different learning method in the second class.

num_set<-c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0)


#We will add a number in num_set to group2 and call it group2a. 
#It will shift its mean to the non-negative direction. The goal in 
#this PE is to find the smallest constant in num_set that rejects 
#the null hypothesis in a two-sample t-test between group1 and group2a. 
#Both the null and alternative hypotheses are listed below.

#Null hypothesis: Ho: μ1 = μ2a

#alternative hypothesis: Ha: μ1 ≠ μ2a

#Use R to find the smallest constant in num_set that rejects the null 
#hypothesis at the significance level of 5%.

#Hint: You can use rnorm() and p.val inside t.test(). 
#You can retrieve the value by using t.test()$p.val. t.test() is used in HOP6.