
#1 Use read.table() to read the file and store the data by calling it flu. 
#(You need to make sure the file is in the correct working directory.)

flu<-read.table(file="flu.txt",header=TRUE, sep="")
print(flu)

#2 Check the number of rows in the data as you need to divide the data into two groups. 
#Allocate the first 40 rows of the data and call it train. 
#Call the remaining rows of the data test.

numrow=nrow(flu)
print(numrow)
train<-head(flu,40)
print(train)
test<-flu[41:50,]
print(test)

#3 Attach the train data using attach().
attach(train)
print(train)

#4 Fit logistic linear regression in train data between dependent variable ‘Shot’ 
#and dependent variables ‘Age’ and ‘Health.Aware’ using glm(). Call it train.glm.
train.glm<-glm(formula=Shot~Age+Health.Aware,family=binomial,data=train)

#5 Display the summary of the fitted logistic regression by using summary(train.glm).
#Check the p-value of each coefficient.

final.train.glm<-glm(formula=Shot~Age+Health.Aware,family=binomial(link='logit'),data=train)
print(summary(final.train.glm))

#6 Using the approach introduced in HOP08, check the accuracy of the trained model on test data.
#[Section: Building a Logistic Regression Model]
library(caTools)

fitted.probabilities<-predict(final.train.glm,newdata=train,type='response')
fitted.results<-ifelse(fitted.probabilities>0.5,1,0)

misClasificError<-mean(fitted.results!=test$Shot)

#7 Display the accuracy of the trained model on test data.

print("Accuracy is equal to:")
print(1-misClasificError)