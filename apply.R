#consider matrix which is 2,3 & stores integer values apply mean function for this

a=matrix(c(1:6),2,3)
a
c=apply(a,c(1,2),mean)
mean(c)

#consider builtnin data set bod sumup each row and each column & maultiply each value by 10
d=data.frame(BOD)
fn=function(d)
{
  result=result*d
  print(result)
  
}
m=apply(d,2,fn)
m
or
m=apply(d, 2,sum)
m
m=apply(d, 2,sum)*10
m

#using lapply take column means for ozone,solar,wind for each dataframe

d=data.frame(airquality)
d
air=function(d$Solar.R)
{
  mean(airquality$Solar.R,na.rm = TRUE)
}
air=function(d$Wind)
{
  mean(airquality$Wind,na.rm = TRUE)
}
air=function(d$Ozone)
{
  mean(airquality$Ozone,na.rm = TRUE)
}
#consider a built in dataset airquality split this data frame by month varibleso their is seprate data frame

g=airquality$Month
l=split(airquality,g)

#consider a data frame which has age of 10 patients drawn from 5 clinics using tapply find mean by each clinic 
Nobel=c(12,45)
Inlax=c(56,75)
Ruby=c(67,54)
Mangeshkar=c(78,65)
zanzurne=c(5,32)
d=data.frame(Nobel,Inlax,Ruby,Mangeshkar,zanzurne)
