## Put comments here that give an overall description of what your
## functions do

## Write a pair of functions that cache the inverse of a matrix.

## Write a short comment describing this function
## The first function, makeCacheMatrix creates a special "matrix", which could cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        i<-NULL
        set<-function(y){
                x<<-y
                i<<-NULL
        }
        get<-function()x
        setinverse<-function(inverse) i<<-inverse
        getinverse<-function()i
        list(set=set,
             get=get,
             setinverse=setinverse,
             getinverse=getinverse)

}



## Write a short comment describing this function
## ## The second function, return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        cacheSolve <- function(x, ...) {
        i<-x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data<-x$get()
        i<-solve(data,...)
        x$setinverse(i)
        i
}
