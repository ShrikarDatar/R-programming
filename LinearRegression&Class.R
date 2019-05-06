#linear regression
x=c(151,174,138,186,128,136,179,163,152,131)
y=c(63,81,56,91,47,57,76,72,62,48) 
plot(y,x)
abline(y,x)
cor(x,y)
var=lm(y~x)
summary(var)
var$residuals
mean(var$residuals)
a=x[7]=y[7]
a


s=list(name="abc",age=21,gpa=5.56)
class(s)="student"
class(s)
student=function(n,a,g){
  if(g>10||g<0)
    stop("gpa must be 0 and 10")
  value=list(name=n,age=a,gpa=g)
  attr(value,"class")="student"
}
student("pqr",22,12)
