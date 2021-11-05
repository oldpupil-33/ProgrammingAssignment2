## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()){
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set=set,get=get,setinverse=setinverse,
         getinverse=getinverse)
}
## Write a short comment describing this function
##This function can create a special matrix object that
##cache its inverse matrix for the input.

cacheSolve <- function(x,...){
    m <- x$getinverse()
    if(!is.null(m)){
        message("getting inversed data")
        return(m)
    }
    data <- x$get()
    m <- solve(data,...)
    x$setinverse(m)
    m
}

##this function can compute the inverse of the matrix 
###which is the output of makeCacheMatrix function


                            