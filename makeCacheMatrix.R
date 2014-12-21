makeCacheMatrix <- function(x = matrix()) {

        ##This function creates a special "matrix" object that can cache its inverse
		
		i <- NULL
		set <- function(y) {
                x <<- y
                i <<- NULL
        }
		
		get <- function() x
		
		setInverse <- function(invrse)  i <<- inverse
		
		getInverse <- function() i
		
		list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}