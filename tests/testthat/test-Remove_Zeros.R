library("testthat")

test_that("Tables of non-numbers will return an error", {
  x = data.frame(c("A","B"),c("C","D"))
  expect_error(rm_0s_by_col(x))
  expect_error(rm_0s_by_row(x))
})
test_that("The functions will work with numeric inputs", {
  set.seed(1)
  x = matrix(rpois(100, 0.1), 10, 10)
  expect_equal(rm_0s_by_col(x), x[,-c(4:6,9,10)])
  expect_equal(rm_0s_by_row(x), x[-c(2,3,5,6,9),])
})
