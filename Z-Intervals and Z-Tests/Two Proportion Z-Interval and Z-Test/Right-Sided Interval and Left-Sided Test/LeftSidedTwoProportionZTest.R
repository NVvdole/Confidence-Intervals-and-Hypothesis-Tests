# File Name: LeftSidedTwoProportionZTest.R
# Author: Verginia Mae Dole
# Date Created: 4/6/2022

{
  nx <- as.integer(readline(prompt = "Enter nx: "))
  while (nx <= 0) {
    nx <- as.integer(readline(prompt = "Enter nx: "))
  }
  
  x <- as.integer(readline(prompt = "Enter x: "))
  while (x >= nx) {
    x <- as.integer(readline(prompt = "Enter x: "))
  }
  
  ny <- as.integer(readline(prompt = "Enter ny: "))
  while (ny <= 0) {
    ny <- as.integer(readline(prompt = "Enter ny: "))
  }
  
  y <- as.integer(readline(prompt = "Enter y: "))
  while (y >= ny) {
    y <- as.integer(readline(prompt = "Enter y: "))
  }
  
  CL <- as.double(readline(prompt = "Enter CL: "))
  while (CL <= 0.0 || CL >= 1.0) {
    CL <- as.double(readline(prompt = "Enter CL: "))
  }
  
  prop.test(x = c(x, y), n = c(nx, ny), alternative = "less", conf.level = CL)
}
