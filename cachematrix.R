## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
 iv <- NULL
 set <- function(y){
  x <<- y
  iv <<- NULL
 }
 get <- function() x
 setiv <- function(inverseMatrix) iv <<- inverseMatrix
 getiv <- function() iv
 list(set = set, get = get, setiv = setiv, getiv = getiv)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 iv <- x$getiv()
 if(!is.null(iv)){
  message("getting cached data")
  return(iv)
 }
 matrix <- x$get()
 iv <- solve(data, ...)
 x$setiv(iv)
 iv

}
