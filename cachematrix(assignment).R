 makeCacheMatrix <- function(x = matrix()) {
  + cachedInverse <- NULL
  + set <- function(y) {
  +     x <<- y
  +     cachedInverse <<- NULL
  +     }
  
  +     get <- function() x
  +     setInverse <- function(inverse) cachedInverse <<- inverse
  +     getInverse <- function() cachedInverse
  +     list(set = set, get = get,
  +     setInverse = setInverse,
  +     getInverse = getInverse)
  + }

## Return the inverse of an cacheMatrix object
  
 cacheSolve <- function(x, ...) {
  + ## Return a matrix that is the inverse of 'x'
  +    invFunc <- x$getInverse()
  +    if(!is.null(invFunc)) {
  +    message("getting cached data")
  +    return(invFunc)
  +     }
    
  +     data <- x$get()
  +     invFunc <- solve(data, ...)
  +     x$setInverse(invFunc)
  +     invFunc
  + }
  
A <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
     cacheMatrix <- makeCacheMatrix(A)
     inverse1 <- cacheSolve(cacheMatrix)
     print(inverse1) 
      
Output

#       [,1] [,2]
##  [1,] -2   1.5
### [2,]  1  -0.5

inverse2 <- cacheSolve(cacheMatrix)  
  
     
  inverse2 <- cacheSolve(cacheMatrix)  
  print(inverse2)  
  
Output

#       [,1] [,2]
##[1,]   -2  1.5
### [2,]  1 -0.5

