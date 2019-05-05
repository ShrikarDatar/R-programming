#sum of n natural numbers

sumNaturals=function(n)
{
  if(n!=0)
  {
    return(n+sumNaturals(n-1))
  }
  else
    return(n)
}
sumNaturals(10)
