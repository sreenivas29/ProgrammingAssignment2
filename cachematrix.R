

## Write a short comment describing this function
##cacheSolve is a function which computes the inverse of the special "matrix"returned by makeCacheMatrix above.
#If the inverse has already been calculated(and the matrix has not changed), then the cachesolve should retrieve theinverse from the cache
## I simply set the input x as a matrix
## and then set the solved value "s" as a null
## then I changed every reference to "mean" to "solve"
makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

}
## Same here, changed "mean" to "solve" and "m" to "s"
##cacheSolve is a function which computes the inverse of the special "matrix"
##returned by makeCacheMatrix above. If the inverse has already been calculated
##(and the matrix has not changed), then the cachesolve should retrieve the inverse from cache
cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
