## Put comments here that give an overall description of what your
## functions do

# functions 'makeCacheatrix' and 'cacheSolve' allow caching of a matrix' inverse,
# and finding the inverse by returning the cached value if it exists.

## Write a short comment describing this function
# function 'makeCacheMatrix' gets as input matrix 'x' and outputs an object which is a 
# list of four functions: 'set' and 'get' to set and get the matrix value, and 'setinv' 
# and 'getinv' to set and get the matrix' inverse.
# once the inverse is set, it caches its value for future use.
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                inv <<- NULL
                x <<- y
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse 
        getinv <- function() inv

        list(set=set, get=get, setinv=setinv, getinv=getinv)
  
}


## Write a short comment describing this function
# function 'cacheSolve' gets as value a cached matrix 'x' (an object created 
# by 'makeCacheMatrix' function), and returns its inverse. if the inverse was 
# not computed beforehand, it computes its value and caches it in 'x'. if it 
# was computed, it returns the cached value.
cacheSolve <- function(x, printMsg=T, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if (!is.null(inv)) {
                if (printMsg==T) message("getting cached data")
                return(0)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
}
