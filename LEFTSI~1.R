# File Name: LeftSidedOneStdDevChiSquareTest.R
# Author: Verginia Mae Dole
# Date Created: 4/6/2022

library(EnvStats)

{
  sigx0 <- as.double(readline(prompt = "Enter sigmax0: "))
  while (sigx0 <= 0.0) {
    sigx0 <- as.double(readline(prompt = "Enter sigmax0: "))
  }
  
  nx <- as.integer(readline(prompt = "Enter nx: "))
  while (nx <= 0) {
    nx <- as.integer(readline(prompt = "Enter nx: "))
  }
  
  x <- c()
  for (i in 1:nx) {
    x[i] <- as.double(readline(prompt = paste("Enter x", as.character(i), " : ", sep = "")))
  }
  
  CL <- as.double(readline(prompt = "Enter CL: "))
  while (CL <= 0.0 || CL >= 1.0) {
    CL <- as.double(readline(prompt = "Enter CL: "))
  }
  
  varTest(x = x, alternative = "greater", conf.level = CL, sigma.squared = sigx0 ^ 2.0)
}