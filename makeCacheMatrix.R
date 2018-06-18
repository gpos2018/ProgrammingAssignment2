makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x #get value
        setinverse <- function(inverse) i <<- inverse #inverse matrix
        getinverse <- function() i #get inverted matrix
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}