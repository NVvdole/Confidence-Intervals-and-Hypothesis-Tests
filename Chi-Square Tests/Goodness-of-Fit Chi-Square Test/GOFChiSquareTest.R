# File Name: GOFChiSquareTest.R
# Author: Verginia Mae Dole
# Date Created: 4/13/2022

{
  n <- as.integer(readline(prompt = "Enter n: "))
  while (n <= 0) {
    n <- as.integer(readline(prompt = "Enter n: "))
  }
  
  O <- c()
  for (i in 1:n) {
    O[i] <- as.double(readline(prompt = paste("Enter O", as.character(i), " : ", sep = "")))
    while (O[i] <= 0.0) {
      O[i] <- as.double(readline(prompt = paste("Enter O", as.character(i), " : ", sep = "")))
    }
  }
  
  E <- c()
  for (i in 1:n) {
    E[i] <- as.double(readline(prompt = paste("Enter E", as.character(i), " : ", sep = "")))
    while (E[i] <= 0.0) {
      E[i] <- as.double(readline(prompt = paste("Enter E", as.character(i), " : ", sep = "")))
    }
  }
  
  p <- E / sum(O)
  
  chisq.test(x = O, p = p)
}
