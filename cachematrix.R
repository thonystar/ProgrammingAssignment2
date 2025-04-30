## Put comments here that give an overall description of what your
## functions do
#Creación de la función 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
    crear_matriz <- function(y){
        x <<- y
        inver <<- NULL
        
    }
    mostrar_matriz <- function() x
    guardar_inversa <- function(inversa) inver <<- inversa
    mostrar_inversa <- function() inver
    list(crear_matriz = crear_matriz, mostrar_matriz = mostrar_matriz,
         guardar_inversa = guardar_inversa, mostrar_inversa = mostrar_inversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inver <- x$mostrar_inversa()
    if(!is.null(inver)){
        print("Esta es la inversa")
        return(inver)
    }
    data <- x$mostrar_matriz()
    inver <- solve(data, ...)
    x$guardar_inversa(inver)
    inver
    
}

