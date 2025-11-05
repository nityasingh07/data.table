# inst/tests.Rraw/tests-cube-sdcols.R
library(data.table)
library(testthat)

test_that("cube() supports .SDcols = patterns()", {
  DT <- data.table(a1 = 1:2, a2 = 3:4, b = 5:6)
  
  res <- cube(DT, .SDcols = patterns("^a"))
  
  # Check that only the columns matching the pattern were used:
  expect_true(all(c("a1","a2") %in% names(res)))
  expect_false("b" %in% names(res))
  
  # Optionally check row count or grouping etc:
  # e.g., expect_equal(nrow(res), some_expected_value)
})
