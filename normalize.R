#min-max normalize() function
nomrlaize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}