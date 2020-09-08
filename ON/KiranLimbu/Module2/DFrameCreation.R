# Weather Data
days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri');
temp <- c(22.2, 21, 23, 24.3, 25);
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE);

# Using above variable create data frame
df <- data.frame(days, temp, rain);
print(df);

# check structure
print(str(df));

# summary
print(summary(df));

# Using SUBSET() FUNCTION...

# Select days when it rains
print(subset(df, subset=rain==TRUE));

# Select days when temp is higher then 23
print(subset(df, subset=temp>23));

# Sort in ascending order (default order)
sortByTemp <- order(df$temp);
print(df[sortByTemp,]);

# Sort in descending order
sortByTempDesc <- order(-df$temp);
print(df[sortByTempDesc,]);

