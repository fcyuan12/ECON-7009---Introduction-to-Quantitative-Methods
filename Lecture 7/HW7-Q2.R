library(pracma)

# a
fa <- function(x){
  x[1]^2 + sqrt(x[2])
}

xa <- c(1, 1)

Ha <- hessian(fa, xa)
eigen(Ha)

# d
fd <- function(x){
  sqrt(x[1]) + sqrt(x[2]) + sqrt(x[3])
}

xd <- c(2, 2, 2)

Hd <- hessian(fd, xd)
eigen(Hd)

# e 
fe <- function(x){
  sqrt(x[1]*x[2]*x[3])
}

xe <- c(2, 2, 2)

He <- hessian(fe, xe)
eigen(He)

# f
ff <- function(x){
  x[1]*x[2] + x[2]*x[3] + x[3]*x[1]
}

xf <- c(1, 1, 1)

Hf <- hessian(ff, xf)
eigen(Hf)
