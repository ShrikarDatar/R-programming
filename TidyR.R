install.packages("dplyr")
library(dplyr)
d1=read.csv("incom.csv")
d1

#select random n rows n=10
sample_n(d1,10)
#select random fraction of rows
sample_frac(d1)
#remove duplicate rows
distinct(d1)
#remove duplicate rows based on index variable
distinct(d1,d1$Index)
#select variable index and state=y2009
select(d1,Index,Y2009,State)
#drop variable index
select(d1,-Index)
#select variable starts with "y" and also drop variable starts with "y"
select(d1,starts_with("y"),-starts_with("y"))
#contains literal string
select(d1,contains("i"))
#matches regular expression
select(d1,matches("y"))
#Numerical range
select(d1,num_range("Y",2009:2010))
#rename varaible Index to IndexName
rename(d1,Index_name=Index)
#Display subset of rows A & C in the index and income is greater the 1.3million in hear 2002
filter(d1,Index%in%c("A","C"))
filter(d1,Index%in%c("A","C")&(d1$Y2002)>1300000)
filter(d1,Index%in%c("A","C"),(d1$Y2002)!=1300000)
filter(d1,Index%in%c("A","C")|(d1$Y2002)>1300000)
#calculate mean and median for variable Y2009
summarise(d1,mean(d1$Y2009),median(d1$Y2009))
#Arrange data according to index variable  using descending order
arrange(d1,desc(Index))
#Find square root of 18 and add with 16
16%>%sqrt()%>%+18
#Display 10 random observation of variable Index and state form dataset using pipe order
select(d1,Index,State)%>%sample_n(10)
#group dataset using index variable
group_by(d1,Index)
#using pipe operator summerise group() & sort(); compute mean of  Y2014 & Y2015 the sort the result by calculated mean variable 2015 
m1=mean(d1$Y2014,na.rm = TRUE)
m2=mean(d1$Y2015,na.rm = TRUE)
m1
m2
group_by(d1,)%>%summarise(d1,m2)%>%sort(m2,decreasing = TRUE)
#create variable name diffrence which is equal to Y2013-Y2012 use mutate to create this variable
m=mutate(d1,diffrence=Y2013-Y2012)
m

#create data frame and apply join
df1=data.frame(id=c(1,2,3,4,5),var1=c("a","b","c","d","e"),var2=c(1,1,0,0,1),var3=rnorm(5),var4=letters[1:5])
df2=data.frame(id=c(1,7,3,6,8),var11=c("z","b","k","d","i"),var22=c(1,2,3,0,4),var33=rnorm(5),var44=letters[2:6])
k=inner_join(df1,df2,BY=id)
k
k=left_join(df1,df2,BY=id)
k
k=right_join(df1,df2,BY=id)
k
k=semi_join(df1,df2,BY=id)
k
k=full_join(df1,df2,BY=id)
k
k=anti_join(df1,df2,BY=id)
k
library(tidyr)
data=mtcars

data$carname=rownames(data)
data
#apply gather in which car name kept constant
a=gather(data,key="c",value = "measure",-carname)
a
v=a%>%spread(c,value ="measure")
v
