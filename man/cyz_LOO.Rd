\name{cyz_LOO}
\alias{cyz_LOO}
\title{Provide a Leave-One-Out validation method}
\usage{
cyz_LOO()
}
\description{
This is a Leave-One-Out method written by Yongzhou Chen.
And you are able to obtain the total error.
}
\examples{
rm(list=ls())
set.seed(123)

n=100
p=4
X<-matrix(rnorm(n*p),nrow=n)
Y<-c(rep(0,n/2),rep(1,n/2))
total_error <- cyz_LOO(X,Y,cyz_Logistic)
}
