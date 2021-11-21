#' To remove rows and columns of 0s
#'
#' Some description about the function.
#'
#' @param v Input vector, must be a character vector.
#' @param patterns The Regex pattern to match, default will extract the first two words.
#' @param repl The values to replace the pattern matched that was specified by `patterns`.
#' @param ... Additional arguments to be passed to `[sub]` function.
#' @return A character vector, with the binomial scientific names
#' @examples get_binomial_name(c("Carex aquatilis Wahlenb.", "Boerhavia coulteri (Hook. f.) S. Watson"))

rm_0s_by_row = function(data = v, ){

  if(!is.numeric(v) | !is.integer(v)){
}
