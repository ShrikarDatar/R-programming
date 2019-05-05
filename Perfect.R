#perfect number

{
  n <- as.integer(readline(prompt = "Enter a number :"))
  i = 1
  sum = 0
  
  while (i < n) {
    if (n %% i == 0) {
      sum = sum + i
    }
    i = i + 1
  }
  
  if (sum == n) {
    print(paste("The number is perfect :", n))
  } else{
    print(paste("The number is not perfect :", n))
  }
  
}
