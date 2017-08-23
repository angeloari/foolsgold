#' Generate Distinct Colours via the hsv function
#'
#' Creates a vector of (not necessarily) unique colours - that are not to dark and not too light.
#'
#' @param n The number of hex codes to generate
#'
#' @return A vector of hex codes of length, \strong{n}
#'
#' @seealso \code{\link{hsv}} 
#' 
#' @examples
#' 
#' ## Not Run:
#' generate_distinct_colours(3)
#' # "#757B48" "#2117C3" "#871C0D"
#' 
#' @export

generate_distinct_colours <- function(n){
  hsv(
    h = runif(n,min = 0,max = 360), 
    s = runif(n,  0.4,   1), 
    v = runif(n,  0.3, 0.8)
  )
}

