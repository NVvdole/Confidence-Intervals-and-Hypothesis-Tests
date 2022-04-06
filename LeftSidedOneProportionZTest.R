# File Name: LeftSidedOneProportionZTest.R
# Author: Verginia Mae Dole
# Date Created: 4/6/2022

{
  px0 <- as.double(readline(prompt = "Enter px0: "))
  while (px0 <= 0.0 || px0 >= 1.0) {
    px0 <- as.double(readline(prompt = "Enter px0: "))
  }
  
  nx <- as.integer(readline(prompt = "Enter nx: "))
  while (nx <= 0) {
    nx <- as.integer(readline(prompt = "Enter nx: "))
  }
  
  x <- as.integer(readline(prompt = "Enter x: "))
  while (x >= nx) {
    x <- as.integer(readline(prompt = "Enter x: "))
  }
  
  CL <- as.double(readline(prompt = "Enter CL: "))
  while (CL <= 0.0 || CL >= 1.0) {
    CL <- as.double(readline(prompt = "Enter CL: "))
  }
  
  prop.test(x = x, n = nx, p = px0, alternative = "less", conf.level = CL)
}