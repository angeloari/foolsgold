

# Load all R functions in a directory

load_functions <- function(dir, ...){
  arguments <- list(...)
  sapply(dir, source(...))



}
