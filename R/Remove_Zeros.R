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
  all.0 = NULL
  for(i in 1:(nrow(v)-1)){
    if(mean(v[i - n.d,]) != 0 | any(v[i,]) <0){

    }
    else{
      all.0 = rbind(all.0,i)
    }
  }

}

rm_0s_by_col = function(data = v){
  ## Checks to ensure the table contains numbers
  if(!is.numeric(v) | !is.integer(v)){
    stop("The input vector is not a number.")
  }
  all.0 = NULL
  for(i in 1:(nrow(v)-1)){
    if(mean(v[i,]) != 0 | any(v[,]) <0){

    }
    else{
      all.0 = rbind(all.0,i)
    }
  }

}
