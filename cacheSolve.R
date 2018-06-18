cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) { #previously calculated check
                message("getting cached data") #presiously calculated.  returns i and done
                return(i)
        }
        data <- x$get() #if not previously calculated. get data
        i <- solve(data, ...) #inverse matrix
        x$setinverse(i) #set inversed value
        i
}