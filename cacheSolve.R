cacheSolve <- function() {
        ## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
		## If the inverse has already been calculated (and the matrix has not changed), 
		## then cacheSolve should retrieve the inverse from the cache.
		
		i <- x$getInverse()
		
		if(!is.null(i)) {
		
			message("Getting result ... Complete...")
			
			return(i)
		}
		else
		{
			message("Calculating inverse matrix...")
			
			i <- solve(x$get())
			
			x#setInverse(i)
			
			message("Complete..")
			
			return(i)
		}
		
		
}