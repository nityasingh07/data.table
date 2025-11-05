# inst/tests.Rraw/cube-sdcols.R
# Raw test: cube() with .SDcols = patterns("^a")

library(data.table)

cat("Testing cube() with .SDcols = patterns('^a'):\n")

DT <- data.table(
  grp = c("A", "A", "B", "B"),
  a1 = 1:4,
  a2 = 5:8
)

# Try running cube() and display the output
result <- tryCatch(
  cube(DT, by = "grp", .SDcols = patterns("^a")),
  error = function(e) e
)

print(result)



