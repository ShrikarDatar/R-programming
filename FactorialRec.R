#factorial using recusrion
fact=function(no)
{
  if(no==0)
    return(1)
  else
    return(no*fact(no-1))
    
}
fact(5)
