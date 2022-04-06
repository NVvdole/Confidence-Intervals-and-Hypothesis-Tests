# File Name: LeftSidedTwoMeanTTest.R
# Author: Verginia Mae Dole
# Date Created: 4/6/2022

{
  nx <- as.integer(readline(prompt = "Enter nx: "))
  while (nx <= 0) {
    nx <- as.integer(readline(prompt = "Enter nx: "))
  }
  
  x <- c()
  for (i in 1:nx) {
    x[i] <- as.double(readline(prompt = paste("Enter x", as.character(i), " : ", sep = "")))
  }
  
  ny <- as.integer(readline(prompt = "Enter ny: "))
  while (ny <= 0) {
    ny <- as.integer(readline(prompt = "Enter ny: "))
  }
  
  y <- c()
  for (i in 1:ny) {
    y[i] <- as.double(readline(prompt = paste("Enter y", as.character(i), " : ", sep = "")))
  }
  
  CL <- as.double(readline(prompt = "Enter CL: "))
  while (CL <= 0.0 || CL >= 1.0) {
    CL <- as.double(readline(prompt = "Enter CL: "))
  }
  
  t.test(x = x, y = y, alternative = "greater", conf.level = CL)
}
