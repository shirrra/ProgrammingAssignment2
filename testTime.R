# just a script comparing times of cached-inversion with normal inversion

slow <- function(n, k) {
        x <- matrix(rnorm(k*k),k,k) 
        cx <- makeCacheMatrix(x)
        for (i in 1:n) {
                solve(x)
        }
        1
}

fast <- function(n, k) {
        x <- matrix(rnorm(k*k),k,k) 
        cx <- makeCacheMatrix(x)
        for (i in 1:n) {
                cacheSolve(cx, F)
        }
        1
}

print(system.time(slow(1000,100)))
print(system.time(fast(1000,100)))