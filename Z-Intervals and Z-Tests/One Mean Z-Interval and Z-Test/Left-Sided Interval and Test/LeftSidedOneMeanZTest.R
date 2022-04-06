# File Name: LeftSidedOneMeanZTest.R
# Author: Verginia Mae Dole
# Date Created: 4/6/2022

library(BSDA)

{
  mux0 <- as.double(readline(prompt = "Enter mux0: "))
  
  sigx <- as.double(readline(prompt = "Enter sigmax: "))
  while (sigx <= 0.0) {
    sigx <- as.double(readline(prompt = "Enter sigmax: "))
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
  
  z.test(x = x, alternative = "greater", mu = mux0, sigma.x = sigx, conf.level = CL)
}
