# Matrices
# Chapter 2

matequal <- function(x, y) is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

#Exercise 1
ex1.a0 <- matrix(rep(0,9),3,3)
ex1.a0 
ex1.a <- matrix(c(1,1,3,5,2,6,-2,-1,-3),3,3,byrow = TRUE)
ex1.result <- matequal(ex1.a0, ex1.a %*% ex1.a %*% ex1.a )
ex1.result

# b)
ex1.a <- matrix(c(1,1,3,5,2,6,-2,-1,-3),3,3,byrow = TRUE)
ex1.a[,3] <- c(sum(ex1.a[1,2:3]),sum(ex1.a[2,2:3]), sum(ex1.a[3,2:3]))
ex1.a

# Exercise 2
ex2.mat <- matrix(rep(c(10,-10, 10),15),15,3,byrow = TRUE)
ex2.mat

ex2.result <- crossprod(ex2.mat, ex2.mat)
ex2.result

# Excersise 3
ex3.matE <- matrix(rep(0,36),6,6)
ex3.matE[abs(col(ex3.matE)-row(ex3.matE)) == 1] <- 1
ex3.matE

#Excersise 4
ex4.empty <- matrix(rep(0,5),5,5)
ex4 <- ex4.empty
ex4 <- (row(ex4.empty)-1) + (col(ex4.empty)-1)
ex4

# Exercise 4/ second implementation
ex4.func <- function(x,y){
  return( x + y)
}
ex4.2 <- outer(c(0:4), c(0:4), ex4.func)
ex4.2

# Excercise 5

#setup
ex5.a <- c(0:4)
ex5.b <- c(0:8)
ex5.c <- c(0:9)

ex5.func <- function(x,y){
  return(x+y)
}

# Replace seed vector here
ex5.x <- ex5.c # ex5.a/ex5.b

# Matrix building here
ex5.x.result <- outer(ex5.x, ex5.x, ex5.func)
ex5.x.result <- ex5.x.result %% length(ex5.x)
ex5.x.result


#Exercise 6
ex6.n <- 5
ex6.seed <- rep(c(0:ex6.n),ex6.n)
ex6.mat <- matrix(ex6.seed,ex6.n,ex6.n)
ex6.a <- abs(row(ex6.mat)- col(ex6.mat))+
ex6.a
ex6.b <- c(7,-1,-3, 5, 17)
solve(ex6.a, ex6.b)

#Exercise 7
set.seed(75)
ex7.aMat <- matrix(sample(10,size=60, replace=T),nr=6)
ex7.aMat

# a) apply(x,margin,func) margin == 1 --> applied on row / margin == 2 --> applied on columns
ex7.a <- apply(ex7.aMat,1,function(x){return(sum(x>4))})
ex7.a

# b) 
ex7.b <- which(apply(aMat,1,function(x){sum(x==7)==2}))
ex7.b

# c)
ex7.c.colSum <- colSums(ex7.aMat)
ex7.c <- which(outer(ex7.c.colSum, ex7.c.colSum, "+") > 75, arr.ind=T)
ex7.c

# Excercise 8
# a)
ex8.a <- sum((1:20)^4)*sum(1/((1:5)+3))
ex8.a

# part ||
ex8.a.2 <-sum(outer((1:20)^4,4:8, "/"))
ex8.a.2

# b)
ex8.b <- sum((1:20)^4 / (outer((1:20),(1:5),"*")+3))
ex8.b

# c)
ex8.c <- sum(outer(1:10,1:10, function(i,j){(i>=j)*i^4/(3+i*j)}))
ex8.c
