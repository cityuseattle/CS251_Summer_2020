df <- mtcars
print(head(df)) #print the first 6 rows of the dataframe

#returns the first line of the data frame (and not a vector!)
rowdf <- df[1,]
print(rowdf)
#Please run your code to see the outpur before writing the next line

#to get to the first line a row as a vector, use following
vrow <- as.numeric(as.vector(df[1,]))
print(vrow)
