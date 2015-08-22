## Put comments here that give an overall description of what your
## functions do




## Write a short comment describing this function

# I will first start by instanciating the matrix variable.
# I will then create the methods needed to set and get the values for 
# both  the source matrix and the inverse

makeCacheMatrix <- function(x = matrix()) {
        my_matrix <- NULL
        
        set <- function (y) {
                x <<- y
                my_matrix <<- NULL
        }
        get <- function() x 
        setinverse <- function(result)  my_matrix <<- result
        getinverse <- function() my_matrix
        
        list (set = set, get = get, 
              setinverse = setinverse, getinverse = getinverse)
}


# ## Write a short comment describing this function
# the function first tests to see if the inverse has already been calculated
# if it has, it returns the previous value, else it calculates and stores the inverse

cacheSolve <- function(x, ...) {
        
        my_matrix <- x$getinverse()
        
        if (!is.null(my_matrix)) {
                print("Getting cached data")
                return(my_matrix)
        }
        
        m <- solve(x)
        x$setinverse(m)
        m
}
