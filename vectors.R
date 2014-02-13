# 1. Vectors

# 1. Create vectors

# Exercise 1
c(1:20)
c(20:1)
c(1:20,19:1)
tmp <- c(4,6,3)
tmp

help(rep)
ex1.e = rep(tmp,10)
ex1.e

ex1.f <- rep_len(tmp,31)
ex1.f.2 <- c( rep(tmp,10), 4)

ex1.g <- c(rep(tmp[1],10),rep(tmp[2],20),rep(tmp[3],30))

# Exercise 2
ex2 <- seq(3,6,by=.1)
ex2.func <- function(x){return (exp(x)*cos(x))}
ex2.result <- sapply(ex2, ex2.func)
ex2.result

# Excercise 3
# a)
ex3.func <- function(x){return(0.1^(3*x)*0.2^x)}
ex3.x <- c(1:6)
ex3.result <- sapply( ex3.x, ex3.func)
ex3.result

# b)
ex3.b.func <- function(x){ return(2^x/x)}
ex3.b.x <- c(1:25)
ex3.b.result <- sapply( ex3.b.x, ex3.b.func)
ex3.b.result

#Excercise 4
# a)
ex4.a.x <- c(10:100)
ex4.a.func <- function(x){return(x^3+4*x^2)}
ex4.a.y <- sapply(ex4.a.x, ex4.a.func)
ex4.a.y
ex4.a.result <- sum(ex4.a.y)
ex4.a.result

#Excercise 4
# b)
ex4.b.x <- c(1:25)
ex4.b.func <- function(x){return(2^x/x + 3^x/x^2)}
ex4.b.y <- sapply(ex4.b.x, ex4.b.func)
ex4.b.y
ex4.b.result <- sum(ex4.b.y)
ex4.b.result

#Excercise 5
# a)
ex4.a.result <- paste("label", c(1:30), sep =" ", collapse = NULL)
ex4.b.result
# b)
ex4.b.result <- paste("fn", c(1:30), sep = "", collapse = NULL)
ex4.b.result

# Exercise 6
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
xVec
yVec

ex6.a <- yVec[2:250]-xVec[1:249]
ex6.a

# b)
ex6.b <- sin(yVec[1:249])/cos(xVec[2:250])
ex6.b

#c
ex6.c <- xVec[1:248] + 2*xVec[2:249] - xVec[3:250]
ex6.c

#c
ex6.d <- sum( exp((-1)*xVec[2:250])/(xVec[1:249]+10))
ex6.d

#Exercise 7
ex7.a <- xVec[c(xVec>600)==TRUE]
ex7.a 

# b)
ex7.b <- which(xVec > 600)
ex7.b

# c)
ex7.c <- yVec[ex7.b]
yVec
ex7.c

# d)
ex7.d.mean <- mean(xVec)
ex7.d.mean
ex7.d.func <- function(x){
  return(abs((x-ex7.d.mean))^(1/2))
}
ex7.d <- sapply(xVec, ex7.d.func)
ex7.d

# e)
ex7.e <- length( yVec[yVec >= (max(yVec)-200)])
ex7.e

# f)
ex7.f <- length(xVec[xVec %% 2])
ex7.f

# g)
ex7.g <- xVec[order(yVec)]
ex7.g

# h)
ex7.h <- yVec[c(T,F,F)]
ex7.h

# Exercise 8
ex8.x <- seq(from=2,to=38,by=2)
ex8.y <- seq(from=3,to=39,by=2)
ex8.vec <- ex8.x/ex8.y
ex8.vec
ex8 <- 1 + sum(cumprod(ex8.vec))
ex8

