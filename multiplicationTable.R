multi<- function()
{
  no=as.integer(readline(prompt = "Enter no to print its multplicatio table "))
  mult=1
  for(i in 1:10)
  {
    mult=no*i
    print(paste(no,"X",i,"=",mult))
  }
}
multi()
