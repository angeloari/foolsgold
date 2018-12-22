create_unique_names<-function(n){

  if(abs(as.integer(n)-n) > 1e-6) stop("'n' must be an integer")




  N =ceiling(log(n+26)/log(26))

  n <- as.integer(n[1L])
  if(!is.finite(N) || N < 2)
    stop("'n' must be a length-1 integer >= 1")

  res <- vector("list", N)
  res[[1]] <- LETTERS
  for(i in 2:N)
    res[[i]] <- c(sapply(res[[i-1L]], function(y) paste0(y, LETTERS)))

  ids = unlist(res)[1:n]




  return(ids)

}
