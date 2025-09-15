setwd("C:\\Users\\Hiruni\\Desktop\\IT24103279")

#Question 1

#Part 1 
#Binomial Distribution
n <- 50
p <- 0.85

#Part 2 
#P(X >= 47) = 1-P(x <= 46)
1 - pbinom(46, n, p, lower.tail = TRUE)
#pbinom(46, n, p, lower.tail = FALSE)


#Question 2

#Part 1 
#Number of calls a call center recieves per hour

#Part 2 
#Poisson Distribution
#Lambda = 12

#Part 3
lambda <- 12
dpois(15,lambda)