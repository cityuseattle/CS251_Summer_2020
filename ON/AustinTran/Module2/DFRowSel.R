cars <- mtcars;
first.ten.rows <- cars[1:10,]; #Same as head (cars, 10)
print(first.ten.rows); #Run code

#Conditional Selection
sub1 <- df[ (cars$mpg > 20 & cars$cyl > 4)];
print (sub1); 

sub2 <- subset(cars, carb > 3 & cyl > 4);
print(sub2);

#Select all except row 2
everything.but.row.two <- subset(cars[-2,], cyl==6);
print(everything.but.row.two);
