#find median by using median()
student.height<-c(100,106,121,111,109,111,103,117,114)
print(median(student.height))

#there is no direct cmmd in R to find mode
#some external packages have this option 
#if we creat a table, it will show,
#which height is repeated most number of times
print(table(student.height))

#the table shows 111 being repeated two times
#therefore 111 is mode. 
#you can sort table to put 111 as last item, you want to get
#highest frequency, so you use the following to get mode
a<-table(student.height)
print(names(a)[which(a==max(a))])

#calculate median for nottem dataset
print(median(nottem))

#calculate mode for nottem dataset
b<-table(nottem)
print(names(b)[which(b==max(b))])