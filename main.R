friendly<-function(n){
  #split up the number into its digits.
  x<-as.numeric(strsplit(as.character(n),"")[[1]])
  #initialize variables as needed
  m<-length(x);z<-0;j<-0
  y<-vector("numeric",1)
  #conduct primary operations
  while(length(unique(y))==length(y)){ #to prevent infinite loops
    j<-(j+1)
    z<-sum(x^2);y<-c(y,z)
    x<-as.numeric(strsplit(as.character(z),"")[[1]])
  }
  print(y)
  #if the loop ends in 1, a number is "friendly."
  if(y[length(y)]==1){print("friendly number")}
  else{print("unfriendly number")}
}
