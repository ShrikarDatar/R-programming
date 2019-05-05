#Sum of digit using while loop
n=as.integer(readline(prompt = "Enter a number"))
while(num > 0) {
  sum = sum + num
  num = num - 1
}
print(paste("The sum is", sum))

#sum of digit i/p from user
num = as.integer(readline(prompt = "Enter a number: "))
if(num < 0) {
  print("Enter a positive number")
} else {
  sum = 0
  print(paste("The sum is", sum))
}
