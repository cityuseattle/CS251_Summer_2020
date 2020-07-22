days<-c('mon','tue','wed','thur','fri')
temp<-c(22.2,21,23,24.3,25)
rain<-c(TRUE,TRUE,FALSE,FALSE,TRUE)

#we can create dataframes using dat.frame function and pass vectors as arguments,
#which will then conver vectors into columns of the datafram

df<-data.frame(days,temp,rain)

#check structure
print(str(df))

#run code to see output before writing next line
print(summary(df))

#we can use subset function to grab subset of values from
# our data frame based off some condition
print(subset(df,subset=rain==TRUE))

print(subset(df,subset=temp>23))

#sort in ascending order
sort.temp<-order(df$temp)
print(df[sort.temp,])

#use negative sign to do descending order
desc.temp<-order(-df['temp'])
print(df[desc.temp,])

