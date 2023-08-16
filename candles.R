count=0
x=0

candles=function(age){
  while(age>0){
    x=sample(1:age-x,size=1)
    age=age-x
    count=count+1
  }
  return(count)
}
candles(25)

#calling candles for  for 1000 times
vec=numeric(length=1000)
call=function(n){
  for(i in 1:1000){
    vec[i]=candles(n)
  }
  return(vec)
}