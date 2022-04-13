# File Name: IndependenceChiSquareTest.R
# Author: Verginia Mae Dole
# Date Created: 4/13/2022

{
  r <- as.integer(readline(prompt = "Enter r: "))
  while (r <= 0) {
    r <- as.integer(readline(prompt = "Enter r: "))
  }
  
  c <- as.integer(readline(prompt = "Enter c: "))
  while (c <= 0) {
    c <- as.integer(readline(prompt = "Enter c: "))
  }
  
  n <- r * c
  
  O <- c()
  i = 1
  j = 0
  for (k in 1:n) {
    j <- j + 1
    O[k] <- as.double(readline(prompt = paste("Enter O", as.character(i), as.character(j), ": ", sep = "")))
    while (O[k] <= 0.0) {
      O[k] <- as.double(readline(prompt = paste("Enter O", as.character(i), as.character(j), ": ", sep = "")))
    }
    if (j == c) {
      j = 0
      i <- i  + 1
    }
  }
  
  O <- matrix(O, ncol = c, byrow = TRUE)
  O <- as.table(O)

  chisq.test(O)
}
