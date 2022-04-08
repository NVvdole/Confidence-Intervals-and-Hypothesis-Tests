# File Name: LeftSidedPairedMeanTTest.R
# Author: Verginia Mae Dole
# Date Created: 4/6/2022

{
  n <- as.integer(readline(prompt = "Enter n: "))
  while (n <= 0) {
    n <- as.integer(readline(prompt = "Enter n: "))
  }
  
  x <- c()
  for (i in 1:n) {
    x[i] <- as.double(readline(prompt = paste("Enter x", as.character(i), " : ", sep = "")))
  }
  
  y <- c()
  for (i in 1:n) {
    y[i] <- as.double(readline(prompt = paste("Enter y", as.character(i), " : ", sep = "")))
  }
  
  CL <- as.double(readline(prompt = "Enter CL: "))
  while (CL <= 0.0 || CL >= 1.0) {
    CL <- as.double(readline(prompt = "Enter CL: "))
  }
  
  t.test(x = x, y = y, alternative = "less", paired = TRUE, conf.level = CL)
}
