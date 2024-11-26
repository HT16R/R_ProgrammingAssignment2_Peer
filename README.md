# R Programming Assignment: Cache Matrix
This repository contains an implementation for caching the inverse of a matrix. The `cachematrix(assignment).R` file provides functions to create a 'special matrix object'.
This special matrix object cache its inverse, and is useful when computing the inverse of a matrix multiple times (hence the term 'cache') 
## File: `cachematrix(assignment).R`
This file includes the following functions:
makeCacheMatrix(): This function creates a special matrix object that can cache its inverse.
cacheSolve(): This function computes the inverse value of the matrix & retrieves this value from the cache (if it has already been computed).
Example: Say we wish to obtain the inverse of a matrix B with elements as prime numbers from 1 to 10. We first create the required makeCacheMatrix & cacheSolve functions.
The functions can be used for executing the following lines in R: 
### Create a 3x2 matrix B with prime numbers from 1 to 10
> B <- matrix(c(1,2,3,5,7,9), nrow = 3, ncol = 2)
#### Create the cache matrix object
> cachematrix <-makeCacheMatrix(B)
##### Compute and store the inverse of the matrix
> inverse <-cacheSolve(cacheMatrix)
> print(inverse)
###### Output
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
###### Retrieve the cached inverse
> inverse <-cacheSolve(cacheMatrix)
> print(inverse)
###### Output
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
###### How to Run the Code:
(a) Clone the repository: You can clone this repository to your local machine using the following Git command: git clone https://github.com/HT16R/R_ProgrammingAssignment2_Peer.git
(b) Open the cachematrix(assignment).R file: Open this file in your preferred R environment
(c)Run the Code: The makeCacheMatrix() function creates the matrix object, and cacheSolve() will compute the inverse and retrieve it from the cache. You can modify the B Matrix with your own data to test caching.
###### License:
As this code is provided under the MIT License, you can use it freely, modify and distribute it, but please do give due credit to the author.
