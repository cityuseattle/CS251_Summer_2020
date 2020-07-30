#create vector and then use mean()
student.height<-c(100,106,121,111,109,111,103,117,114)
print(mean(student.height))

#sometimes all values are not available. If there is no value 
#for an item, it is stored as NA
student.height1<-c(100,106,121,111,109,111,103,117,114,NA,1047)
print(mean(student.height1))

#remove the NA from the calculation
#that can be done by argument na.rm=TRUE
print(mean(student.height1, na.rm=TRUE))

#in the above case there is an extreme value of 1047
#in some cases you might want to remove these outliers from the calculation
#in R there is an option to trim the data. the argument is 
#trim=0.1 (for example) will remove 10% of the data from the top
#and 10% from the bottom 
print(mean(student.height1,trim=0.1,na.rm=TRUE))

#calculate avg temp for nottem dataset
print(mean(nottem))