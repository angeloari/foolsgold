#' Value matching
#'
#' `%in%` returns logical vector indicating values that do not have a match.
#' `%inx%` returns a vector of the values that have a match.
#' `%notinx%` returns a vector of the values that do not have a match.
#'
#' @md
#' @rdname notin
#'
#' @param x vector or NULL: the values to be matched. Long vectors are supported.
#' @param y vector or NULL: the values to be matched against. Long vectors are not supported.
#'
#' @return
#' `%notin%` A logical vector, indicating if a match was not located for each element of `x`: thus the values are TRUE or FALSE and never NA.
#'
#' `%inx%` returns a sub-vector of `x` with the values that were found in `y`.
#'
#' `%notinx%` returns a sub-vector of `x` with the values that were not found in `y`.
#'
#' @seealso [base::match()]
#' @export
#'
#' @examples
#' vals <- c("a", "notin", 3)
#' vals %notin% letters
#' vals %inx% letters
#' vals %notinx% letters
`%notin%` <-  function(x, y) !`%in%`(x, y)

#' @rdname notin
#' @export
`%inx%` <- function(x, y) x[`%in%`(x, y)]

#' @rdname notin
#' @export
`%notinx%` <- function(x, y) x[`%notin%`(x, y)]
