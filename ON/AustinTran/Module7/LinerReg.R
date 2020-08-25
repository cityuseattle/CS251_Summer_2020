library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)

#Read CSV, Note the delimiter (sep)
df <-  read.csv('student-mat.csv', header=TRUE, sep=';')

print(head(df))
#Run your code to see the o/p before writing the next line

#print(summary(df))

#Check if you have NA values
#NA means not available
print(any(is.na(df)))

#Grab only numeric columns
num.cols <- sapply(df, is.numeric)

#Filter to numeric columns for correlation
cor.data <- cor(df[,num.cols])

print(cor.data)

#Grab only numeric columns
num.cols <- sapply(df, is.numeric)

#Filter to numeric columns for correlation
cor.data <- cor(df[,num.cols])

corrplot(cor.data,method='color')

print(ggplot(df,aes(x=G3)) + geom_histogram(bins=20,alpha=0.5,fill='blue') + theme_minimal())
