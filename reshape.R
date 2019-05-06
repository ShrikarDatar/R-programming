#cast Decast
install.packages("reshape")
install.packages("MASS")
library(reshape)
library(MASS)

#on ships dataset apply the function melt by using ID varible as type and year

data=head(ships,n=10)
var=melt(data,id=c("type","year"))
var
var1=cast(var,type+year~variable,sum)
var1

install.packages("reshape2")
library(reshape2)
df=head(airquality,n=20)
var=melt(df,id=c("Month","Day"))
var
var1=dcast(var,Month+Day~variable,sum)
var1

#use reshape2 package
#consider MTCARS convert it into long format by setting ID variable to "cyl" to "gear"
df=head(mtcars,n=20)
df
var=melt(df,id.vars =c("cyl","gear"))
var

#convert dataset to wide format by using mean as aggrigate function
var1=dcast(var,cyl+gear~variable,mean)
var1
