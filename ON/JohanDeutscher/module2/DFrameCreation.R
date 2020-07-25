#Some made up weather data vectors
days <- c('mon','tue','wed','thu','fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(TRUE,TRUE,FALSE,FALSE,TRUE)

#We can create data frames using the data.fram() function and pass vectors as arguments,
#which will then convert the vesctors into columns of the data frame.

#Pass in the vectors
df <- data.frame(days,temp,rain);

#check structure
print(str(df));

#run your code to see the output before writing the next line
print(summary(df));

#We can use the subset() frunciton to grab a subset of
#values from our data frame based off some condition
print(subset(df,subset=rain==TRUE))

print(subset(df,subset=temp>23));

#by default order function sor in ascending order,
sort.temp<-order(df$temp);
print(df[sort.temp,]);

#we can pass a negtive sing to do descending order
desc.temp <- order(-df['temp']);
print(df[desc.temp,]);
