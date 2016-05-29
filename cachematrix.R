## I am writing a function that will cache the inverse of a matrix for use 
##later.


##this function creates a matrix that can cache its own inverse.

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function (y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(inverse) inv <<- inverse
	getinv <- function() inv
	list(set = set, get = get, 
	setinv = setinv, getinv = getinv)
}


## this function computes the inverse of a function and checks to see if the 
##inverse has already been cached, if it has been cached it will retrieve the
##cached matrix.


cacheSolve <- function(x, ...) {
cacheSolve <- function (x,...) {
	inv <- x$getinv()
	if(!is.null(inv)){
		message("getting cached inverse")
		return(inv)
	}
	mat <- x$get()
	inv <- solve(mat,...)
	x$setinv(inv)
	inv
}


        ## Return a matrix that is the inverse of 'x'
}
