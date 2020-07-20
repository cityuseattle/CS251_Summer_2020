df <- mtcars
print(head(df))#print first 6 rows of the dataframe

#returns the first line of the data fram (and not a vector!)
rowdf <- df[1,]
print(rowdf)
#Run code check here

#To get the first line a row as a vector, use the following
vrow <- as.numeric(as.vector(df[1,]))
print(vrow)