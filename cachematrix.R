## The purpose of this exercise is to develop a pair of functions which allow someone to cache
## the inverse of a matrix.

## The 'makeCacheMatrix' function allows you to:
## 1) Set the value of the matrix
## 2) Get the value of the matrix
## 3) Set the vale of the inverse
## 4) Get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y){
    x <<- y
    I <<- NULL
    
  }
 get <- function() x
 setinverse <- function(solve) I <<- solve
 getinverse <- function() I
 list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## The 'cacheSolve' function computes the inverse of the matrix created in the function above. 
## If the inverse has already been calculated (and the matrix has not changed), then the 'cacheSolve' function should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        I <- x$getinverse()
        if(!is.null(I)){
          message("getting cached data")
          return(I)
        }
   data <- x$get()
   I <- solve(data, ...)
   x$setinverse(I)
   I
   
}

