#Some made up weather data vectors
days <- c('Mon','Tue','Wed','Thur','Fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

#We can create data frames using the data.frame() function and pass vectors as arguments,
#which will then convert the vectors into columns of the data frame.

#Pass in the vectors:
df <- data.frame(days,temp,rain)

#Check structure
print(str(df))
#Run the code to see the output

print(summary(df))

#We can use the subset() function to grab a subset of
#values from out data fram based off conditions
print(subset(df, subset = rain == TRUE))

print(subset(df,subset = temp > 23))

#By default order function sort in ascending order
sort.temp <- order(df$temp)
print(df[sort.temp,])
#Run the code as a check

#we can pass a negative sign to do descending order
desc.temp <- order(-df$temp)
print(df[desc.temp,])