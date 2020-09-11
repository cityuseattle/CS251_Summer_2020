# 1. read flu file
flu <- read.table('Flu.txt', header = TRUE)

# Check for missing data
print(any(is.na(flu)))

# 2a. get the number of rows
rowLen <- nrow(flu)

# 2b. Allocate the first 40 rows to variable train
train <- head(flu, 40)
# 2c. Allocate the rest to varaiable test
test <- tail(flu, rowLen - 40)

# 3. attach train data
attach(train)

# 4. Fit logistic linear regression in train data
train.glm <- glm(formula = Shot ~ . , family = binomial(link = 'logit'), data = train)

# 5. Display the summary
print(summary(train.glm))

# 6. Check the accuray of the trained model on test data
fitted.probabilities <- predict(train.glm, newdata = test, type = 'response')
fitted.results <- ifelse(fitted.probabilities > 0.5, 1, 0)

# 7. Display accuracy of the trained model on test data
misClasificError <- mean(fitted.results != test$Shot)
print("Acuracy is equal to:")
print(1-misClasificError)
