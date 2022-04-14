# File Name: ANOVAFFTest.R
# Author: Verginia Mae Dole
# Date Created: 4/13/2022

{
  n <- as.integer(readline(prompt = "Enter n: "))
  while (n <= 0) {
    n <- as.integer(readline(prompt = "Enter n: "))
  }
  
  x <- c()
  i = 0
  j = 1
  for (k in 1:(3 * n)) {
    i <- i + 1
    x[k] <- as.double(readline(prompt = paste("Enter x", as.character(i), as.character(j), ": ", sep = "")))
    while (x[k] <= 0.0) {
      x[k] <- as.double(readline(prompt = paste("Enter x", as.character(i), as.character(j), ": ", sep = "")))
    }
    if (i == n) {
      i = 0
      j <- j + 1
    }
  }
  
  Treatment <- c()
  j = 1
  for (i in 1:(3 * n)) {
    Treatment[i] <- j
    if (i %% 10 == 0) {
      j <- j + 1
    }
  }
  Treatment <- as.character(Treatment)
  
  data <- data.frame(x = x, Treatment = Treatment)
  model <- lm(x ~ Treatment, data = data)
  anova(model)
}