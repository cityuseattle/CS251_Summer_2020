library(ggplot2)

df.train<-read.csv('titanic_train.csv')
#View(head(df.train))
#print(str(df.train))

#visualize the survived column
print(ggplot(df.train,aes(Survived))+geom_bar())

#visualize Pclass col with colors
print(ggplot(df.train,aes(Pclass))+geom_bar(aes(fill=factor(Pclass))))

#visualize gender col
print(ggplot(df.train,aes(Sex))+geom_bar(aes(fill=factor(Sex))))

#visualize age col
print(ggplot(df.train,aes(Age))+geom_histogram(bins=20,alpha=0.5,fill='blue'))

#visualize age vs pclass
p1<-ggplot(df.train,aes(Pclass,Age))
p1<-p1+geom_boxplot(aes(group=Pclass,fill=factor(Pclass),alpha=0.4))
print(p1+scale_y_continuous(breaks=seq(min(0),max(80),by=2)))

#clean data by adding values to NA values in age col
impute_age<-function(age,class){
    out<-age
    for(i in 1:length(age)){
        if(is.na(age[i])){
            if(class[i]==1){
                out[i]<-37
            }else if(class[i]==2){
                out[i]<-29
            }else{
                out[i]<-24
            }
        }else{
            out[i]<-age[i]
        }
    }
    return(out)
}

#call the function
fixed.ages<-impute_age(df.train$Age,df.train$Pclass)

#assign the fixed to ages col to ages col in df.train
df.train$Age<-fixed.ages

#if the output is false then no NA values are in age col
print(any(is.na(df.train$Age)))

#remove variable that we are not going to use
library(dplyr)

df.train<-select(df.train,-PassengerId,-Name,-Ticket,-Cabin)
print(head(df.train))