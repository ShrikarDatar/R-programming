#factorial using recusrion
fact=function(no)
{
  if(no==0)
    return(1)
  else
    return(no*fact(no-1))
    
}
fact(5)
#without recursion
function()
{
  n=as.integer(readline(prompt = "Enter any number"))
  fact=1
  for(i in 1:n)
  {
      fact=fact*i
  }
  print(paste("Factorial is ",fact))
} 
