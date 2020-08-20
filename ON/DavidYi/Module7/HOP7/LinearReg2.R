library(caTools)

#Read CSV, note delimiter
df <- read.csv('student-mat.csv',header=TRUE,sep=';')

#Set random seed so your "random results" are the same as this HOP
set.seed(101)

#split sample, randomly assign boolean to a new column "sample"
sample <- sample.split(df$G3, SplitRatio = 0.70) #SplitRatio = percent of sample == TRUE

#Training Data, 70% will be training data
train = subset(df, sample == TRUE)

#Testing data, 30% will be test data
test = subset(df, sample == FALSE)

#Train & Build Model
model <- lm(G3 ~ .,train)

print(summary(model))

#Grab residuals
res <- residuals(model)

#Convert to DataFrame for ggplot
res <- as.data.frame(res)

#print first 6 rows of the res column
print(head(res))

#histogram of residuals
#print(ggplot(res,aes(res)) + geom_histogram(fill="blue",alpha=0.5))

#plot(model)

#variable G#.prediction using the predict function
G3.predictions <- predict(model,test)

#Create dataframe with prediction data and actual data
results <- cbind(G3.predictions,test$G3)

#name two columns pred(prediction), real (actual data)
colnames(results) <- c('pred','real')
results <- as.data.frame(results)

print(head(results))

#Function to check if number is < 0, then make it zero
to_zero <- function(x){
    if (x < 0){
        return(0)
    }else{
        return(x)
    }
}

#Apply to_zero function to prediciton columsn
results$pred <- sapply(results$pred,to_zero)

#Make sure min value of predicted col is zero
print(min(results))

#Evaluate prediction values using MSE
mse <- mean((results$real-results$pred)^2)

print('MSE')
print(mse)

#R-Squared value for our model (predictions)
SSE <- sum((results$pred - results$real)^2)
SST <- sum((mean(df$G3) - results$real)^2)

R2 <- 1 - SSE/SST
print(R2)