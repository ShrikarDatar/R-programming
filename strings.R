v=c(1,2,3,4,5)
funSearch=function(n,v)
{
  n%in%v
}
funSearch(6,v)
#create function given data frame will print the name of the column and class of data on screen
d=data.frame(Orange)
fun1=function(df)
{
  print(names(df))
  lapply(df,class)
  
}
fun1(df)

#create function that give numeric vector sort list in ascending order & duplicate the vector by 2

vect=c(1,2,6,4,5)
fun2=function(vect)
{
  sort(vect,decreasing = TRUE)
  
  
}
vect=vect*2
print(vect)
fun2(vect)

#consider charchter vector display number of charchter display in the string
a=c("A","B","C")
nchar(a)

#consider two chachter vectors write code combine both charachter vectors 
a=c("Shree")
b=c("DATAR")
union(a,b)

#write nasted loop where outer loop increments a 3 times & inner loop b increments 4 times the break statement exist inner for loop after 2 increments the nasted loop prints the value of two variable

for(a in 1:3){
for(b in 1:4){
print(c(a,b))
}
}
#using while loop print variable i that is incrementd 2:5 and uses next statment to skip pinting of number 3

x=2:5
for(i in x) {
  if(i==3){
    next
  }
  
  print(i)
  
}

#create charachter vector with 5 strings and sort them in ascending and descending order
a=c("AAI")
b=c("KAKA")
d=c("BABA")
e=c("AATYA")
f=c("MAVSHI")
d1=data.frame(a,b,d,e,f)
sort(a,b,d,e,f,decreasing = FALSE)
sort(a,b,d,e,f,decreasing = TRUE)

#replace occurance of paid with pays from the following string

str6="Hardwork always paid"
chartr("paid","Pays",str6)
#input two numbers from users divide them and display it with two decimal places

a=c(12)
b=c(6)
d
sprintf("00%f",d)


install.packages(stringr)
library(stringr)

#install babynames dataset find  the vector of babynames using stringr functions
#input a string and display it in reverse order

stringi::stri_reverse(c("R program"))
 
#create two strings and display display number of words present in string 1 &2

str1="shree"
str2="datar"
stringi::stri_count_words(str1,str2)
stringi::stri_duplicated(str1)

#create a string which consist of duplicate vector

str1=c("shree","shree","datar")
stringi::stri_duplicated(str1)

#create string with scientist display number of charchters present and also display duplicate names

str1="Shree"
stringi::stri_length(str1)
stringi::stri_duplicated(str1)

#create a string and determine starting and ending index of first word and last word
str1=c("SHREE")
stringi::stri_locate_first_words(str1)
stringi::stri_locate_last_words(str1)

#create a string student must study regularly replace must with don't
stringi::stri_replace_all_fixed("student must study regularly","must","dont")

#accept weekday number(1-7)& display weekday name accordingly

week=function(n)
{
  print("Enter ant weekday")
  n=as.integer(readline())
  switch(n,"monday","tuesday","wednesday","thursday","friday","saturday","sunday")
}
week()

#input month number (1-12) & display number of days present in that month

month=function()
{
  print("Etner any month")
  n=as.integer(readline())
  print(month.name[n])
}
month()

#accept a number from user reverse it and display reverse number in words
reverse=function()
{
  print("Enter any number")
  n=as.integer(readline())
  no=0
  while (n>0) {
    rem=n%%10
    print(switch(rem,"one","two","three","four","five","six","seven","eight","nine","zero"))
    no=no*10+rem
    n=n%/%10
  }
  print(no)
}
reverse()
    
#consider two dataframes 1st df consist of 
#x1=1,4,8,1
#x2=5,5,1,4
#x3=1,2,3,4
#2nd df consist off
#y1=2,8,8,5
#y2=5,3,4,4
#y3=1,2,3,4
#perform set diffrence,union,intersection operations on df

x1=c(1,4,8,1)
x2=c(5,5,1,4)
x3=c(1,2,3,4)
y1=c(2,8,8,5)
y2=c(5,3,4,4)
y3=c(1,2,3,4)
d1=data.frame(x1,x2,x3)
d2=data.frame(y1,y2,y3)
setdiff(d1,d2)
union(d1,d2)
intersect(d1,d2)
