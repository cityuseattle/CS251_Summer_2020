# Question 1 -------------
Name <- c('Avery Bradley', 'Jae Crowder', 'John Holland', 'R.J. Hunter', 'Jonas Jerebko');
Team <- c('Boston Celtics', 'Boston Celtics', 'Boston Celtics', 'Boston Celtics', 'Boston Celtics');
Number <- c(0.0, 99.0, 30.0, 28.0, 8.0);
Position <- c('PG', 'SF', 'SG', 'SG', 'PF');
Age <- c(25.0, 25.0, 27.0, 22.0, 29.0);
Height <- c(74, 78, 77, 77, 82);
Weight <- c(180, 235, 205, 185, 231);


celtics <- data.frame(Name, Team, Number, Position, Age, Height, Weight);
print(celtics);

# Question 2 ----------------
# new rows
Name <- c('Amir Johnson', 'Jordan Mickey', 'Kelly Olynyk');
Team <- c('Boston Celtics', 'Boston Celtics', 'Boston Celtics');
Number <- c(99.0, 55.0, 41.0);
Position <- c('PF', 'PF', 'C');
Age <- c(29.0, 29.0, 25.0);
Height <- c(81, 80, 84);
Weight <- c(240.0, 235.0, 238.0);

# Convert to data frame
Extra <- data.frame(Name, Team, Number, Position, Age, Height, Weight);

# row combine
newCeltics <- rbind(celtics, Extra);
print(newCeltics);

# Question 3 -------------
College <- c('Texas', 'Marquette', 'BostonU', 'Gerogia State', NA, NA, 'LSU', 'Gonazga');
Salary <- c(7730337, 6796117, NA, 1148610, 5000000,12000000, 1170960, 2165160); 

# Convert to data frame
newCol <- data.frame(College, Salary);

# col combine
full.celtics <- cbind(newCeltics, newCol);
print(full.celtics);

# Question 4 ------------
print(summary(full.celtics));

# Question 5 -------------
high.celtics <- subset(full.celtics, Salary > 6000000);
print(high.celtics);

# Question 6 -------------
print(mean(full.celtics[,'Height']));

# Question 7 -------------
low.celtics <- subset(full.celtics, subset=Salary<=6000000);
print(mean(low.celtics[,'Salary']));