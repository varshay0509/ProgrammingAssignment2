## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function (x=matrix()){
	inv_m <- NULL
	set<- function(y) {
		x <<- y
		inv_m <<- NULL
	}
	get <- function()x
	set_inv <- function(solve_m) inv_m <<- solve_m
	get_inv <- function() inv_m
	list( set=set, get=get, set_inv = set_inv, get_inv= get_inv)
}

## Write a short comment describing this function

cacheSolve <- function (x, ...){
	inv_m <- x$get_inv()
	if(!is.null(inv_m)){
		message("getting cached data")
		return(inv_m)
	}
	data <- x$get()
	inv_m <- solve(data)
	x$set_inv(inv_m)
	inv_m
}
