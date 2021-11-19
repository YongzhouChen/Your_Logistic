cyz_LOO <- function(X,y,Model){
  total_error <- 0
  for(idx in 1:nrow(X))
  {
    train_X <- X[-idx,]
    train_y <- y[-idx]
    test_X <- X[idx,]
    test_y <- y[idx]
    model_result <- cyz_Logistic(train_X,train_y)
    coefficients_ <- model_result
    pre_value <- crossprod(test_X,coefficients_)
    if(pre_value >= 0.5){pre_value=1}
    else{pre_value=0}
    error <- (test_y-pre_value)^2
    total_error <- total_error + error/nrow(X)
  }
  return(total_error)
}

