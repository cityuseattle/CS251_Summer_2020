#To find mean of a number of items, use the command median()
student.height<-c(100,106,121,111,109,111,103,117,114)
print(mean(student.height))

print(table(student.height))
a<-table(student.height)
print(names(a)[which(a==max(a))])

print(median(nottem))

k<-table(nottem)
print(names(k)[which(k==max(k))])

