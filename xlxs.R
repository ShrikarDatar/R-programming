library(xlsx)

wb=createWorkbook(type = "xlsx")
st=createSheet(wb,"IRIS")
addDataFrame(iris,st,col.names = TRUE,row.names = FALSE)
saveWorkbook(wb,"sample.xlsx")

df3=read.xlsx("slip2.xls",startRow = 2,endRow = 22,sheetIndex = 1)
color=c("Blue","Yellow","Red")
barplot(df3$Annual.number,names.arg = df3$Year,xlab = "Year",ylab="Annual",col=color,main = "Annual Lynx Traped")
legend("topright",legend=c(df3$Annual.number),cex = 0.6,fill = color)
