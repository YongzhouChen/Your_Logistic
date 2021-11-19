# Your_Logistic
This is a Logistic model created all by yourself.
Make sure that the X is a matrix and y only contains two types of values.
In addition, you can set the Max iteration by "Max_iter" and Learning rate by "learning_rate".
However, the condition of convergence is not provided in this version.

Moreover, a LOO(Leave-One-Out) method has also been provided.
You can use it by "cyz_LOO(X,y,model)".However, we've only achieved the model of cyz_Logistic in this version.


Examples:
//
rm(list=ls())
set.seed(123)

n=100
p=4
X<-matrix(rnorm(n*p),nrow=n)
Y<-c(rep(0,n/2),rep(1,n/2))
cyz_Logistic(X,Y,Max_iter=1000,learning_rate=0.05)
}
total_error <- cyz_LOO(X,Y,cyz_Logistic)
//
