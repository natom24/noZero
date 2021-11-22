#' To remove rows and columns of 0s
#'
#' Some description about the function.
#'
#' @param v The table of numbers, must be a numeric or an integer vector.
#' @return A numeric or integer table, with the table of all rows of 0s removed
#' @export

rm_0s_by_row = function(data = v){
  ## Checks to ensure the table contains numbers
  if(!is.numeric(v) | !is.integer(v)){
    stop("The input vector is not a number.")
  }
  for(i in 1:nrow(v)){

  }

}
