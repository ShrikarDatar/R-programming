install.packages("sp")
install.packages("raster")
library(sp)
library(raster)
var=getData('GADM',country="IND",level=2)
plot(var,col="red"),
var1=subset(var1,var$NAME_1=="goa")
plot(var1,col="red")
