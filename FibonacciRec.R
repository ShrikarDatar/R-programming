fibonacci = function(n)
{
  if (n==0)
  {
    return(0)
    
  }
  if(n==1)
  {
    return(1)
  }
  return(fibonacci(n-1)+fibonacci(n-2))
}
fibonacci(15)
#without recursion

fibonacci<-function()
{
  f1=0
  f2=1
  f3=0
  num=as.integer(readline(prompt = "Enter a number"))
  print(f1)
  print(f2)
  while(num>0) {
    f3=f1+f2
    print(f3)
    f1=f2
    f2=f3
    num=num-1
  }
}
fibonacci()
