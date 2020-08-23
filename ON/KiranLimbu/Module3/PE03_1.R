descriptive_function <-  function (mylist, char, num ) { 
  if(char == 'm') {
      res <- mean(mylist);
  } else if(char == 'v'){
      res <- var(mylist);
  } else if (char == 's') {
      res <- sd(mylist); 
  } else if (char == 'z') {
      zscore <- (num - mean(mylist)) / sd(mylist);
      res <- zscore; 
  }
  print(res); 
} 
descriptive_function(rivers, 'z', 8); 