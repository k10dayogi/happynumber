happy<-function(n){
  #split up the input into its digits.
  x<-as.numeric(strsplit(as.character(n),"")[[1]])
  #initialize variables as needed
  z<-0; y<-vector("numeric",1)
  #square each digit, sum, and repeat process until infinite loop.
  while(length(unique(y))==length(y)){
    z<-sum(x^2);y<-c(y,z)
    x<-as.numeric(strsplit(as.character(z),"")[[1]])
  }
  #if the loop ends in 1, a number is "happy"
  if(y[length(y)]==1){print("happy number")}
  else{print("unhappy number")}
}
