#' To remove columns of 0s
#'
#' These functions run through the columns of a set of data
#' to check for columns that contain only 0s
#'
#' @param x The table of numbers, must be a numeric or an integer vector.
#' @return A numeric or integer table, with the table of all columns of 0s removed
#' @export

rm_0s_by_col = function(x){
  ## Checks to ensure the table contains numbers
  if(!is.numeric(x) | !is.integer(x)){
    stop("The input vector is not a number.")
  }
  all.0 = NULL
  for(i in 1:(nrow(x))){
    if(any(x[,i]) <0){
      next
    }
    else if(mean(x[,i]) == 0){
      all.0 = cbind(all.0,i)
    }
  }
  return(x[,-all.0])
}

#' To remove rows of 0s
#'
#' These functions run through the rows of a set of data
#' to check for rows that contain only 0s
#'
#' @param x The table of numbers, must be a numeric or an integer vector.
#' @return A numeric or integer table, with the table of all rows of 0s removed
#' @export

rm_0s_by_row = function(x){
  ## Checks to ensure the table contains numbers
  if(!is.numeric(x) | !is.integer(x)){
    stop("The input vector is not a number.")
  }
  all.0 = NULL
  for(i in 1:(nrow(x))){
    if(any(x[i,]) <0){
      next
    }
    else if(mean(x[i,]) == 0){
      all.0 = cbind(all.0,i)
    }
  }
  return(x[-all.0,])
}
