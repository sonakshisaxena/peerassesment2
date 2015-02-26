## Put comments here that give an overall description of what your
## functions do

## Almost similar to the examlple function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Almost similar to the example function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m       
}

## test
##a<-matrix(c(1,2,3,4),nrow=2,ncol=2)
## m<-makeCacheMatrix(a)
##m$get()
## no cache in the first run

##cacheSolve(m)

##cacheSolve(m)
## output - getting cached data
##[,1] [,2]
##[1,]   -2  1.5
##[2,]    1 -0.5
