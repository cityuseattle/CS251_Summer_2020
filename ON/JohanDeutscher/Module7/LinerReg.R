library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)

# Read CSV, not the delimiter (sep)
df<-read.csv('student-mat.csv',header=TRUE,sep=';')

print(head(df))
#Run your code to see the o/p before writing the next line

#print(summary(df))

#Check if you have NA values
#NA mean "Not Available"
print(any(is.na(df)))

#Grab only numeric colums
num.cols<-sapply(df,is.numeric)

#Filter to numeric columns for correlation
cor.data<-cor(df[,num.cols])

corrplot(cor.data,methods='color')

#Since we are going to eventually try to predict the G3 score, let's see a historgram of these scores
print(ggplot(df,aes(x=G3))+geom_histogram(bins=20,alpha=0.5,fill='blue')+theme_minimal())

