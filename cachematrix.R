## The "makeCacheMatix" creates a list object that contains the function 
## to set/get the value of the matrix and set/get the value of the inverse.
## The cahceSolve matrix checks if there is already an inverse of the matrix,
## and if not, it calculates it.

## This function takes a matrix as an input, and returns a list containing the 
## function to get/set the values of the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
    final <- NULL
    fill <- function(y) {
        x <<- y
        final <<- NULL
    }
    get<-function() x
    setinverse <- function(solve) final<<-solve
    getinverse <- function() final
    list(fill = fill, get = get, setinverse = setinverse, getinverse = getinverse)
}


## If there is no inverse already calculated, this function will calculate the inverse

cacheSolve <- function(x, ...) {
    final <-x$getinverse()
    if(!is.null(final)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    final <- solve(data)
    x$setinverse(final)
    final
}


