#' Set the working directory using a gui
#'
#'
#' @return findwd changes the current working directory invisibly and with the
#'   same conventions as \code{\link[base]{setwd}}. It will give an error if
#'   it does not succeed.
#' @examples
#' findwd()


findwd<-function(){
  setwd(dirname(file.choose()))
}
