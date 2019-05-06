
#scatter plot

attach(mtcars)
plot(wt,mpg,main = "eg of scatterplot",xlab = "car",ylab = "miles per gallon",col="red")
#3d scatter plot

library(scatterplot3d)
attach(mtcars)
scatterplot3d(wt,disp,mpg,main="3d scatter plot",color = "red")

#scatter plot with colour
scatterplot3d(wt,disp,mpg,highlight.3d = TRUE,type = "h",main = "3d scatter plot")

#for 3d spinning scatter plot
install.packages(rgl)
plot3d(wt,disp,mpg,highlight.3d = TRUE,type = "h",main = "3d scatter plot")

#piechart
values=c(13,12,12,34,21)
labels=c("Burgur","Panipuri","Pizza","Rolls","Pavbhaji")
pie(values,labels = labels,col = rainbow(length(labels)),main = "pie chart for FastFood")

#3d piechart
library(plotrix)
pi3D(values,labels=labels,explode=0.1,main="3dpie")
attach(mtcars)
plot(wt,mpg,main = "Scatter plot",xlab="car",ylab = "Miles",col="red")
pairs(wt,disp,data=mtcars,main="scatter matrix")
install.packages("scatterplot3d")
library(scatterplot3d)

scatterplot3d(wt,mpg,disp,main="3DSCATTER PLOT",highlight.3d = TRUE,type = "h")
install.packages("rgl")
library(rgl)
values=c(4,5,3,2,1)
labels=c("RCB","CSK","MI","DC","RJ")
pie(values,labels,col = rainbow(length(labels)),main = "PIECHART")
install.packages("plotrix")
library(plotrix)
pie3D(values,labels=labels,explode = 0.1,main="3DPieChart")

#use cars dataset construct scatter plot use lab argument of plot() function where thick marks of x&y axis specifies integer use change the orientation of labels for verticle to horizontal 
attach(cars)
plot(speed,dist,main = "CARS",xlab = "CARS",ylab = "DIST",cex.lab=1.5)
#using points function add new observation to the last plot using red color values are speed=23,26 dist=60,61
points(x=c(23,26),y=c(60,61),col="red")
plot(speed,dist,main = "CARS",xlab = "CARS",ylab = "DIST",cex.lab=1.5)

#use layout function to print or display 3 plots'1 on left side scatter plot of cars2on top right histogram of colum speed & on bottom right histogram of colum dist 
layout(matrix(c(1,2,3,0),2,2,byrow = TRUE))
layout.show(3)
plot(cars)
hist(speed,breaks = 1,xlim = c(0,50))
hist(dist,breaks=2,xlim=c(0,50))

#plotly
#create line plot for vectors x&y with 5 diffrent values
install.packages("ggplot2")
install.packages("plotly")
library(ggplot2)
library(plotly)
x=c(1,2,3,4,5)
y=c(12,44,11,26,16)
plot_ly(iris,x=iris$Sepal.Length,y=iris$Petal.Length)

#for the same data construct scatter plot,Barplot,Bubblechart,hitmap
mat=matrix(x,y,5,5)
mat
plot_ly(x=~x,y=~y,mode="lines")
hv=heatmap(mat)
barplot(x,y)
plot_ly(x=x,y=y,mode="scatter")

#Consider mtcars dataset construct boxplot reln between "mpg" & "cyl"
boxplot(mtcars,mtcars$mpg,mtcars$cyl)
c=mtcars$mpg
m=mtcars$cyl
boxplot(c,y)
#ggplot
install.packages("tidyverse")
library(tidyverse)
library(ggplot2)
ggplot(d1,aes(x=d1$carat,y=d1$color,color=d1$clarity))+geom_point()
ggplot(d1,aes(x=d1$carat,color=d1$clarity))+geom_histogram()
ggplot(d1,aes(x=d1$carat,color=d1$clarity))+geom_bar()
ggplot(d1,aes(x=d1$carat,y=d1$table,color=d1$clarity,ymin=1.5,ymax=3.5))+geom_crossbar()

#decision tree
#consider dataset reading skills (It describes core of someone's reading skill if we know the variables age,shoesize,score whether the person is native speaker or not
install.packages("party")
library(party)
data=readingSkills
data
plt=ctree(nativeSpeaker~age+shoeSize+score,data=readingSkills)
plot(plt)
