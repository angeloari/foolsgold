

#' Load all R functions
#'
#' Load R functions from files in a directory to the global environment
#'
#'
#' @param path a character vector of full path names; the default corresponds to the working directory, getwd(). Tilde expansion (see path.expand) is performed. Missing values will be ignored.
#' @param pattern an optional regular expression. Only file names which match the regular expression will be returned.
#' @param all.files a logical value. If FALSE, only the names of visible files are returned. If TRUE, all file names will be returned.
#' @param full.names a logical value. If TRUE, the directory path is prepended to the file names to give a relative file path. If FALSE, the file names (rather than paths) are returned.
#' @param recursive logical. Should the listing recurse into directories?
#' @param ignore.case logical. Should pattern-matching be case-insensitive?
#' @param include.dirs logical. Should subdirectory names be included in recursive listings? (They always are in non-recursive ones).
#' @param no.. logical. Should both "." and ".." be excluded also from non-recursive listings?
#' @param ... Other options pased to \code{\link{source}}
#'
#' @export
#'
#'
load_functions <- function(path = '.', pattern = NULL, all.files = FALSE,
                           full.names = FALSE, recursive = FALSE,
                           ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE, ...){

  sapply(
    dir(path = path, pattern, all.files,
        full.names, recursive,
        ignore.case, include.dirs, no..),
    source, ...)
}
