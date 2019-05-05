#create lsit which consists of vector which stores names of the month a matrix of 2 rows & list which consists of charcter and numeric value
#1 assigns names to the elements prresent in the list
#2 add element at end of list which is charchter
#3 Remove last element
#4 update 3rd element with charchter value

m=month.name
m
a=matrix(c(1,2),2,2)
a
l=list(month=c(m),matrix=c(m))
l
l=list(month=c(m),m=matrix(c(1,2),2,2),name=c("SHREE"))
l
l$name=NULL
l
l=list(month=c(m),m=matrix(c(1,2),2,2),name=c("SHREE"))
char=c("a","b","c")
num=c(1,2,3)
l1=list(char,num)
l1
l2=list(l,l1)
l1[[2]][3]="H"
l1


#Consider air passenger dataset fetch first two columns & display 
#fetch air passenger data greater than column 1949 conver it to matrix add months to matrix
data=matrix(AirPassengers,12,12,byrow = TRUE)
data
colnames(data)=c(month.name)
colnames

#consider two vectors of integer values display op of 1st vector <= 2nd vector 
#use vbind function on bi=oth vectors & length function sepratly on both vectors
a=c(1,2,3)
b=c(3,4,5)
a<=b
length(a)
length(b)
#Assume that you have registerd the  height and weight for 5 people height in cm are given as 151,180,165,160,193
#weight in kg 60,86,58,64,100 create two vectors height and weight with the given data the bmi defined as weight in kg/height m^2
#create a vector with BMI values for % people finally create vector with weight for those people who have BMI larger then 25

height=c(151,180,165,160,193)
weight=c(60,86,58,64,100)
height_meter=height/100
height_meter
BMI=weight/height_meter^2
BMI
BMI[BMI>25]

#ASsume you have 5 observation of temprature 23,27,19,24,21 create vector with this values create new vector with temprature in ferhnite
#degree_Celcius -9/5+32
temp_celcius=c(23,27,18,24,21)
temp_fh=temp_celcius-9/5+32
temp_fh


#Assuem you have measured height & radius of 6 cones create vector for radius 2.27,1.69,1.88,1.64,2.14
#height 8.26,8.04,9.06,8.70,7.58,8.43 volume of cone given as 1/3piR^2h 
#create vector with volume of 6 cones 

radius=c(2.27,1.69,1.88,1.64,2.14)
height=c(8.26,8.04,9.06,8.70,7.58,8.43)
volume=1/3*(pi*radius^2)*height
volume

#Consider a vector 1:k where k is poitive integer display how many elements in vector exactly divisible by 3

v=c(1,2,3,6,8,9)
ifelse(v%%3==0,v,NA)

#Consider 6 values  out of which two values are NA 
#1.Display length of vector
#2.Remove all occurance of NA in vector 
#3.Replace all occurance of NA with integer value 
#4.Write code that will return true if it has missing value

d=c(NA,NA,2,4,6,8)
length(d)
df=data.frame(d)
df
na.omit(df)
df[1]=1
d[1]=1
d
d[2]=2
d
anyNA(d)

#Consider vector which has 10 integer values out of which 3 are missing values calculate sum of the vector
a=c(1,2,3,NA,5,6,NA,NA,9,10)
sum(a,na.rm = TRUE)

#Consider dataframe with name cells and prize write a code that will return dataframe which removes all rows with missing values under names column
names=c("A","B","C","D",NA,NA)
cells=c(2,4,6,8,10,13)
prize=c(100,200,300,400,500,600)
d=data.frame(names,cells,prize)
d
df=data.frame(d)
na.omit(d)

#Load orange dataset replace all values of age 118 to NA
df=data.frame(Orange)
df
df$age=NA
df

#Consider VADEATHS check whether object is df or not if the object is not dataframe convert it into dataframe 
#Create new variable total is sum of each row
d=data.frame(VADeaths)
d
total=sum(VADeaths,na.rm = TRUE)
total

#consider dataset swiss create dataframe follows rows 1,2,3,10,11,12,13 & variable examination,education,itfent mortality
#1.infent mortality sarine is wrong it should be set to NA
#2.create row taht will be total sum of column & name it as total

d=data.frame(swiss)
d
d1=d[c(1,2,3,10,11,12,13),c(3,4,6)]
d1
d1$Infant.Mortality=NA
d1
total=sum(d1,na.rm = TRUE)
total

#Use dataset MTCARS save it in variable
#1.use logical operator to o/p only those variable where column MPG is between 15&20(excluding 15 & 20)
#2.use logical operator to o/p only those variable where CYL=6 & column AM is not 0  
#3.column gear or carb has the value 4
#4.use logical operator to o/p the even rows of variable 
#5.use logical operator & change every 4th element column MPG to 0

d=data.frame(mtcars)
d
mt1=d$mpg[(d$mpg<20)&(d$mpg>15)]
mt1
mt2=d$cyl[(d$cyl=6)&(d$am)!=0]
mt2

mt3=d$gear|d$carb[(d$gear)|(d$carb)==4]
mt3

mt4=c(d$mpg,d$cyl,d$disp,d$hp,d$drat,d$wt,d$wt,d$qsec,d$vs,d$am,d$gear,d$carb,d$carb[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32)])
mt4

mt5=d$mpg[c(4,8,12,16,20,24,28,32)]==0
mt5
d$mpg
