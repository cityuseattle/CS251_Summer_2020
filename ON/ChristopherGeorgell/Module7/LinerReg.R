library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)

#read csv , note the deliminator (sep)
df<-read.csv('student-mat.csv',header=TRUE,sep=';')

print(head(df))

print(summary(df))

#check if you have any NA values
print(any(is.na(df)))

#grab only numeric columns for correlation
num.cols<-sapply(df,is.numeric)

#filter to numeric columns for correlation
cor.data<-cor(df[,num.cols])

corrplot(cor.data,methods='color')

#since we're going to eventually try to predict the g3 score 
#lets see a histogram of these scores
print(ggplot(df,aes(x=G3))+geom_histogram(bins=20,alpha=0.5,fill="blue")+theme_minimal())