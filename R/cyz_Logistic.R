#We are creating a Logistic model for yourself
#X is a matrix and y only contains two types of values


cyz_Logistic<-function(X,Y,Max_iter=1000,learning_rate=0.1){
  beta <- rep(0,ncol(X))
  for(i in 1:Max_iter)
  {
    if(i==Max_iter){
      print("we've reached the maximum iterations")
      return(beta)}
    else
    {
      print(paste("we are processing",i))
      X_beta <- X %*% beta
      gradient <- (1/n)* t(X) %*% (exp(X_beta)/(1+exp(X_beta)) - Y)
      beta_new <- beta - learning_rate*gradient
      print(beta_new)
      if(sum(abs(beta-beta_new)) <=0.001){
        print(paste("Lower than the minimum error",beta_new))
        return(beta_new)
        break}
      else{beta <- beta_new}}
  }
  return(beta)
}

